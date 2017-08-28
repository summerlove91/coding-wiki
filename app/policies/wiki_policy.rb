class WikiPolicy < ApplicationPolicy
  attr_reader :wiki

  def initialize (user, wiki)
    super(user, wiki)
    @wiki = record
  end


  def create?
    user.admin || user.premium?
  end

  def new?
    create?
  end

  def update?
    user && (user.admin? || wiki.user == user)
  end

  def edit?
    update?
  end

  def admin_list?
    user.admin?
  end

  def destroy?
    user.admin? || (@wiki.user == user)
  end

  class Scope
     attr_reader :user, :scope

     def initialize(user, scope)
       @user = user
       @scope = scope
     end

     def resolve
       wikis = []
            if user.nil?
                all_wikis = scope.all
                wikis = []
                all_wikis.each do |wiki|
                    if wiki.private == false
                        wikis << wiki
                    end
                end
            elsif user.admin?
                wikis = scope.all
            elsif user.premium?
                all_wikis = scope.all
                wikis = []
                collaborators = []
                all_wikis.each do |wiki|
                    wiki.collaborators.each do |collaborator|
                        collaborators << collaborator.email
                    end
                    if wiki.private == false || wiki.user == user || collaborators.include?(user.email)
                        wikis << wiki
                    end
                end
            else
                all_wikis = scope.all
                wikis = []
                collaborators = []
                all_wikis.each do |wiki|
                    wiki.collaborators.each do |collaborator|
                        collaborators << collaborator.email
                    end
                    if wiki.private == false || collaborators.include?(user.email)
                        wikis << wiki
           end
         end
       end
       wikis # return the wikis array we've built up
     end
   end
end

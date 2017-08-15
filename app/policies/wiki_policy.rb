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
end

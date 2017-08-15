class UserPolicy < ApplicationPolicy
  attr_reader :current_user, :model
  def initialize(current_user, model)
    @current_user = current_user
    @model = model
  end

  def index?
    @current_user.admin?
  end
  def show?
    @current_user.admin? || @current_user = @user
  end
  # def update?
  #     user == record
  # end
end

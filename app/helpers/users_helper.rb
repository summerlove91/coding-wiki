module UsersHelper

  def standard_user?
    current_user && current_user.standard?
  end

  def premium_user?
    current_user && current_user.premium?
  end

  def admin_user?
    current_user && current_user.admin?
  end
end

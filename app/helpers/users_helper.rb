module UsersHelper

  def standard_user?
    current_user && current_user.standard?
  end

  def premium_user?
    current_user && current_user.premium?
  end
end

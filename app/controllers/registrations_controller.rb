class RegistrationsController < Devise::RegistrationsController
    devise_group :user, contains: [:student, :instructor]

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :user_role)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :user_role)
  end

end

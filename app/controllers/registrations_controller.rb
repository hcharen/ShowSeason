class RegistrationsController < Devise::RegistrationsController
    devise_group :user, contains: [:student, :instructor]
    after_create :set_role

    def set_role
      @user = User.find(params[:id])
      @user.student_id = User.student.index(@user)
    end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :user_role, :student_id)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :user_role, :student_id)
  end

end

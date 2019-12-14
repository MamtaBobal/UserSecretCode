class RegistrationsController < Devise::RegistrationsController
  before_action :validate_secret_code, only: [:create]

  def create
    user = User.new(user_params)
    if user.save
      redirect_to new_user_session_path
    else
      redirect_to new_user_registration_path, status: :unprocessable_entity
    end
  end

  private

  def validate_secret_code
    if params[:secret_code].present? && params[:secret_code] == 'foobar'
    else
      redirect_to new_user_registration_path, flash: { error: "Invalid Secret Code" }
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end

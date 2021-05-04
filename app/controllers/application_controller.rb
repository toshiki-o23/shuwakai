class ApplicationController < ActionController::Base
  # ログインしてない場合非表示
  before_action :authenticate_user!

  # ストロングパラメーターを指定
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end

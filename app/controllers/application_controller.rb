class ApplicationController < ActionController::Base
  before_action :authenticate_user! # ログインしていない場合にログイン画面に強制的に遷移させる
  before_action :configure_petmitted_parameters, if: :devise_controller?

  private
    def configure_petmitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end

class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json{head :forbidden, content_type: "text/html"}
      format.html{redirect_to root_path, notice: exception.message}
      format.js{head :forbidden, content_type: "text/html"}
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit :name, :email, :password, :password_confirmation, :remember_me
    end
    devise_parameter_sanitizer.permit(:sign_in) do |u|
      u.permit :login, :name, :email, :password, :remember_me
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit :name, :email, :password, :password_confirmation,
        :current_password
    end
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end
end

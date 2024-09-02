class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

# Opcional: rescata el error Pundit::NotAuthorizedError para manejar los casos de acceso no autorizado
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  include Pagy::Backend


  private

  def user_not_authorized
    flash[:alert] = "No estás autorizado para realizar esta acción."
    redirect_to(request.referrer || root_path)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:rut, :telefono, :apellido_paterno, :apellido_materno, :nombres])
  end

end

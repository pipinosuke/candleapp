class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # strong parametersを設定し、user_idを許可
    # devise_parameter_sanitizer.for(:sign_up){|u|
    #   u.permit(:user_id, :password, :password_confirmation)
    # }
    devise_parameter_sanitizer.permit(:sign_up){|u|
      u.permit(:username,:email, :password, :password_confirmation)
    }

    # devise_parameter_sanitizer.for(:sign_in){|u|
    #   u.permit(:user_id, :password, :remember_me)
    # }
    devise_parameter_sanitizer.permit(:sign_in){|u|
      u.permit(:username,:email, :password, :password_confirmation)
    }
  end
end

# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private 
  
  def respond_with(resource, options={})
    if resource.persisted?
      render json: {
        status: { code: 200, message: "Signed Up Successfully", data: resource }
      }, status: :ok
    else
      render json: {
        status: { message: " User could not be created", errors: resource.errors.full_messages},
        status: :unprocessable_entity
      }
    end
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
  end

end

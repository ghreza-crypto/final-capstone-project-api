module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    respond_to :json

    private

    def respond_with(resource, _options = {})
      if resource.persisted?
        render json: {
          status: { code: 200, message: 'Signed Up Successfully', data: resource }
        }, status: :ok
      else
        render json: {
          status: { message: ' User could not be created', errors: resource.errors.full_messages }
        }, status: :unprocessable_entity

      end
    end

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email password])
    end
  end
end

module Users
  class SessionsController < Devise::SessionsController
    respond_to :json

    def create
      if params[:user][:password].present?
        # Both username and password provided
        super
      else
        # Only username provided, handle accordingly
        handle_username_authentication
      end
    end

    private

    def handle_username_authentication
      resource = User.find_for_database_authentication(username: params[:user][:username])
      if resource&.valid_password?
        sign_in(resource)
        render json: { message: 'Authentication successful', user: resource }
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end

    def respond_with(_resource, _options = {})
      render json: {
               status: { code: 200, message: 'Signed In Successfully', data: current_user }
             },
             status: :ok
    end

    def respond_to_on_destroy
      jwt_payload = JWT.decode(request.headers['Authorization'].split[1],
                               Rails.application.credentials.fetch(:secret_key_base)).first
      current_user = User.find(jwt_payload['sub'])
      if current_user
        render json: {
                 status: 200,
                 message: 'Signed out successfully'
               },
               status: :ok
      else
        render json: {
                 status: 401,
                 message: 'user has no active session'
               },
               status: :unauthorized
      end
    end
  end
end

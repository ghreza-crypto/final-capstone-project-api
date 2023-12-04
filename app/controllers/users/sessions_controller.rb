# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
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
    if resource && resource.valid_password?
      sign_in(resource)
      render json: { message: 'Authentication successful' }
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  
end

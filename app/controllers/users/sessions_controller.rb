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
end

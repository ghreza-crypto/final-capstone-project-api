# frozen_string_literal: true
Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  
  # namespace :api do
  #   namespace :v1 do
  #     resources :cars
  #     resources :reservations
  #   end
  # end
  namespace :api do
    namespace :v1 do
      resources :cars, only: %i[index create destroy show] do
        resources :reservations, only: %i[index create destroy]
      end
    end
  end
end

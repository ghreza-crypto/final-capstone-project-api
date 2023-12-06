# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  
  # namespace :api do
  #   namespace :v1 do
  #     resources :cars
  #     resources :reservations
  #   end
  # end
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index create destroy] do
        resources :cars, only: %i[index create destroy show]
      end
      # resources :items, only: %i[index create destroy show]
      resources :reservations, only: %i[index create destroy]
    end
  end
end

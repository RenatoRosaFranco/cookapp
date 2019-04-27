# frozen_string_literal: true
Rails.application.routes.draw do
  
  # Authenticaton
  # @implemented
  devise_for :users

  # Application
  # @implemented
  root to: 'home#index'

  # API
  # @implemented
  namespace :api, constraint: { subdomain: 'api' } do
  	namespace :v1 do
  		# some code here
  	end
  	namespace :v2 do
  		# some code here
  	end
  end
end

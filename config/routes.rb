# frozen_string_literal: true
Rails.application.routes.draw do
	
	# Adminsitration
	# @implemented
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # @implemented
  devise_for :users, :controllers => {
   omniauth_callbacks: 'users/omniauth_callbacks'
  }

   
  # Application
  # @implemented
  root to: 'home#index'
  resources :recipes  

  # Blog
  # @implemented
  namespace :blog, constraint: { subdomain: 'api' } do
  	resources :posts, only: [:index, :show]
  end

  # Dashboard
  # @implemented
  namespace :dashboard do
  	get '/', to: 'home#index'
  	resources :recipes
  	resources :notifications
  	resources :analytics, only: [:index]
  	resources :account
  	resources :profiles, only: [:index, :show, :edit, :update, :destroy]
  end

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

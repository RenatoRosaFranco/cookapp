# frozen_string_literal: true
Rails.application.routes.draw do

  # Authenticaton
  # @implemented
  devise_for :users

  # Application
  # @implemented
  root to: 'home#index'
  resources :recipes, only: [:index, :show]

  # Dashboard
  # @implemented
  namespace :dashboard do
  	resources :recipes
  	resources :notifications
  	resources :analytics, only: [:index]
  	resources :account
  	resources :profile, only: [:index, :show, :edit, :update, :destroy]
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

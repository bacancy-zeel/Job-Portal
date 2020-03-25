# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :companies
  resources :companies do
    resources :job_posts
  end
  root 'dashboards#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# frozen_string_literal: true

Rails.application.routes.draw do
  resources :manufacturers
  get 'faq', to: 'pages#faq'
  get 'about', to: 'pages#about'
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'
  get 'pages/faq'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

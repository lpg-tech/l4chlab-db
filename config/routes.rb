# frozen_string_literal: true

Rails.application.routes.draw do
  resources :manufacturers
  get 'faq', to: 'pages#faq'
  get 'about', to: 'pages#about'
  get 'help', to: 'pages#help'
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'
  get 'pages/faq'
  get 'pages/help'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# frozen_string_literal: true

Rails.application.routes.draw do
  resources :thanks, only: %i[index]
  get 'prefectures/index'
  get 'reviews/index'
  get 'companys/index'
  resources :assessment_requests, only: %i[index create]
  mount KomachiHeartbeat::Engine => '/ops'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

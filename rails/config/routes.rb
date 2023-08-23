# frozen_string_literal: true

Rails.application.routes.draw do
  get 'apprisal_request_form', to: 'apprisal_request_form#index'
  mount KomachiHeartbeat::Engine => '/ops'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# frozen_string_literal: true

Rails.application.routes.draw do
  get 'prefectures/:prefecture_id/cities/:city_id', to: 'prefectures#index', as: 'prefecture'
  resources :reviews
  get 'companies/:ieul_office_id', to: 'companies#index', as: 'companies'

  resources :assessment_requests, only: %i[index create] do
    resources :thanks, only: %i[index]
  end
  get 'assessment_requests/done', to: 'assessment_requests#done'
  resources :thanks
  mount KomachiHeartbeat::Engine => '/ops'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

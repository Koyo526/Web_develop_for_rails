# frozen_string_literal: true

Rails.application.routes.draw do
  get 'prefectures/:prefecture_id/cities/:city_id', to: 'cities#index', as: 'cities'
  resources :reviews
  get 'companys/:ieul_office_id', to: 'companys#index', as: 'companys'

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

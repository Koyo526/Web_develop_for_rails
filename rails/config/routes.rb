# frozen_string_literal: true

Rails.application.routes.draw do
  get 'prefectures/:prefecture_id/cities/:city_id', to: 'prefectures#index', as: "prefecture"
  get 'reviews/index'
  get 'companys/index'
  resources :assessment_requests, only: %i[index create]
  get 'assessment_requests/done', to: 'assessment_requests#done'
  mount KomachiHeartbeat::Engine => '/ops'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# frozen_string_literal: true

Rails.application.routes.draw do
  get 'thanks/index'
  get 'prefectures/index'
  get 'reviews/index'
  get 'companys/index'

  resources :assessment_requests, only: %i[index create] do
    resources :thanks, only: %i[index]
  end
  get 'assessment_requests/done', to: 'assessment_requests#done'
  mount KomachiHeartbeat::Engine => '/ops'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

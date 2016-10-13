Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'easybreezys/home'
  get 'easybreezys/aboutUs'
  get 'easybreezys/ourWork'
  root 'easybreezys#home'

  get 'typework/landing_page'
  get 'typework/diploma'
  get 'typework/exchange_rate'
  get 'typework/problem_solving'
  get 'typework/programms'
  get 'typework/shop'
  get 'typework/site_card'
  get 'typework/text_translation'


  resources :users, shallow: true do
    resources :requests
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

BarilocheVota::Application.routes.draw do

  match '/votes', to: 'home#votes', as: 'votes'
  match '/schools', to: 'home#schools', as: 'schools'
  match '/grid', to: 'home#grid', as: 'grid'

  root to: "home#votes"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end

Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get 'organize/new'
  get 'organize/show'
  get 'organize/index'

end

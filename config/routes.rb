Rails.application.routes.draw do
  resources :ticket_boxes
  resources :products
  resources :type_of_products
  root "home#index"
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  resources :personal_in_charges
  get 'warehouse/index'
  get 'warehouse/index_all_tickets'

  resources :orden_request_details
  resources :historical_boxes
  resources :outflow_details
  resources :outflows
  resources :inflow_details
  resources :orden_requests
  resources :events
  resources :type_of_events
  resources :inflows
  resources :ticket_boxes
  resources :products
  resources :type_of_products
  root "home#index"
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

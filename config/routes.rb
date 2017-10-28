Rails.application.routes.draw do

  root "home#index"
  get 'home/index'
  get 'warehouse/index'
  get 'warehouse/index_all_tickets'
  get 'pending', to: "warehouse#pending"
  get 'processed', to: "warehouse#processed"
  get 'canceled', to: "warehouse#canceled"
  get 'get_event_autocomplete', to: 'events#get_event_autocomplete'

  resources :personal_in_charges
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

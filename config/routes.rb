Rails.application.routes.draw do

  root "home#index"
  get 'home/index'
  get 'products/stock_by_boxes'
  get 'products/stock_by_ticket'
  get 'pending', to: "warehouse#pending"
  get 'processed', to: "warehouse#processed"
  get 'canceled', to: "warehouse#canceled"
  get 'get_event_autocomplete', to: 'events#get_event_autocomplete'
  get 'warehouse/:id/view_orden', :to => 'warehouse#view_orden_request'
  get 'warehouse/view_proccesed', :to => 'warehouse#view_proccesed'

  get 'approval_request', :to => 'warehouse#approval_request_modal'
  post 'save_approval', :to => 'warehouse#save_approval'
  get 'refuse_request', :to => 'warehouse#refuse_request_modal'
  post 'save_refuse', :to => 'warehouse#save_refuse'

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

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

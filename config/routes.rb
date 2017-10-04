Rails.application.routes.draw do
	
  
  resources :users, only: [:index, :show, :create, :update]
  resources :items, only: [:index]
  resources :ingredients, only: [:index]
  resources :boxes, only: [:index, :show, :create, :update]

# for development purpose
  scope '/api' do
    resources :users, only: [:index, :show, :create, :update]
    resources :items, only: [:index]
    resources :ingredients, only: [:index]
    resources :boxes, only: [:index, :show, :create, :update]
  end

controller 'api/v1/api' do
  match '*unmatched_route', :to => 'api/v1/api#route_options', via: [:options]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

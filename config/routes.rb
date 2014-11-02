Rails.application.routes.draw do

  resources :reviews

  resources :places
  get '/home', to: 'places#home'
  get '/home/:type', to: 'places#home'
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  devise_scope :user do
	  get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
	  get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
	end
	patch "/users/update1/:id", :to => 'users#update1'
end

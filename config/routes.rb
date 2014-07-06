Waiters::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static_pages#home'  
  resources :hosts, :waiters, :events, :inquiries
end
Waiters::Application.routes.draw do
  root 'static_pages#home'  
  resources :hosts, :waiters, :events, :inquiries
end
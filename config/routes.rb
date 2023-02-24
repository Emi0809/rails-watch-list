Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # get 'lists/:id', to: 'lists#show'
  # post 'lists', to: 'lists#create'
  # Defines the root path route ("/")
  # root "articles#index"


  # resources :lists, only: [:new, :create, :show, :index]

root to: "lists#index"
 resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
  
end

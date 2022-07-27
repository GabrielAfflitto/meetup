Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/', to: 'welcome#index'

  get '/groups', to: 'groups#index'
  get '/groups/:id', to: 'groups#show'

  root to: redirect("/groups")
  resources :users do
    collection do
      post :import
    end
  end
end

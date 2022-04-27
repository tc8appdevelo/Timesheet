Rails.application.routes.draw do

  get "/projects", to: "projects#index"
  get "projects/:id", to: "projects#show"
  post "projects", to: "projects#create"
  patch "projects/:id", to: "projects#update"
  put "projects/:id", to: "projects#update"
  delete "projects/:id", to: "projects#destroy"

  get 'silly', to: 'silly#fun'
  post 'silly', to: 'silly#time'
  post 'silly/:thing', to: 'silly#super'

  get 'motorcycles', to: 'motorcycles#index'
  get 'motorcycles/:id', to: 'motorcycles#show'
  post 'motorcycles', to: 'motorcycles#create'
  patch 'motorcycles/:id', to: 'motorcycles#update'
  put 'motorcycles/:id', to: 'motorcycles#update'
  delete 'motorcycles/:id', to: 'motorcycles#destroy'

end

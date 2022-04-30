Rails.application.routes.draw do

  get 'silly', to: 'silly#fun'
  post 'silly', to: 'silly#time'
  post 'silly/:thing', to: 'silly#super'

  get 'motorcycles', to: 'motorcycles#index'
  get 'motorcycles/:id', to: 'motorcycles#show'
  post 'motorcycles', to: 'motorcycles#create'
  patch 'motorcycles/:id', to: 'motorcycles#update'
  put 'motorcycles/:id', to: 'motorcycles#update'
  delete 'motorcycles/:id', to: 'motorcycles#destroy'

  get "/employees", to: "employees#index"
  get "employees/:id", to: "employees#show"
  post "employees", to: "employees#create"
  patch "employees/:id", to: "employees#update"
  put "employees/:id", to: "employees#update"
  delete "employees/:id", to: "employees#destroy"

  resources :projects

end

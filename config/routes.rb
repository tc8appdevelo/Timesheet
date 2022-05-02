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

  resources :employees

  resources :projects

end

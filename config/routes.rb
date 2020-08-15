Rails.application.routes.draw do
  get 'books/index'
  get 'castor' => 'pages#home'
  get 'conf' => 'pages#conf'

  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  patch 'books/:id' => 'books#update'
  # get ROUTE => CONTROLLER#CONFIGURATION
  delete 'books/:id' => 'books#destroy'
  root 'pages#home'

  # For details on the DSL available within
  # this file, see http://guides.rubyonrails.org/routing.html
end

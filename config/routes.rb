Rails.application.routes.draw do
  root 'books#index'

  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
  post 'books' => 'books#create'

  get 'conf' => 'pages#conf'


  # For details on the DSL available within
  # this file, see http://guides.rubyonrails.org/routing.html
end

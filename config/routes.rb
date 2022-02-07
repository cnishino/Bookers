Rails.application.routes.draw do
  get 'books' => 'book#index',as: 'index'
  post 'books' => 'book#create'
  get 'books/:id' => 'book#show', as: 'book'
  get 'books/:id/edit' => 'book#edit', as: 'edit_book'
  get root :to => 'homes#top'
  patch 'books/:id' => 'book#update', as: 'update_book'
  delete 'books/:id' => 'book#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

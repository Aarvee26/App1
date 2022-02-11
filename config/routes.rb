Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :app1 do
    resources :fetch_books do
    end
    match 'get_bookMapping' => 'fetch_books#getBookMapping' , :via => [:get]
  end
end
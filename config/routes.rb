Rails.application.routes.draw do
  resources :destinations
  resources :posts
  resources :bloggers

  post '/posts/:id' => 'posts#addlike', as: 'like'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

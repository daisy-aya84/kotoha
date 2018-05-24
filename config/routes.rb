Rails.application.routes.draw do
  get 'user/index' => "user#index"
  get "user/:id/show" => "user#show"
  get "user/:id/edit" => "user#edit"
  post "/user/:id/update" => "user#update"
  
  get "/signup" =>"user#new"
  post "/user/create" => "user#create"

  get "post/index" => "post#index"
  post "post/:id/destroy" => "post#destroy"

  post "post/create" => "post#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "about" => "home#about"
  get '/' => "home#top"
end

Rails.application.routes.draw do
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  
  get "login" => "user#login_form"
  post "login" => "user#login"
  post "logout" => "user#logout"
  
  get 'user/index' => "user#index"
  get "user/:id" => "user#show"
  get "user/:id/edit" => "user#edit"
  post "/user/:id/update" => "user#update"
  
  get "/signup" =>"user#new"
  post "/user/create" => "user#create"

  get "post/index" => "post#index"
  post "/post/:id/destroy" => "post#destroy"
  get "post/new" => "post#new"
  get "post/:id" => "post#show"

  post "post/create" => "post#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "about" => "home#about"
  get '/' => "home#top"
end

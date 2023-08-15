Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      get '/books', to:"books#index"

      get '/words', to: "words#index"
      get '/word/:id', to: "words#show"
      patch '/word/:id', to: "words#update"
    end
  end

end

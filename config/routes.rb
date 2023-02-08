Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  get "/about", to:"pages#about"

  get "/contacts/:id", to: "contact#index"

  post "/contacts", to:"contact#add" 

#articles_routes

#post
  post "/articles/post", to:"article#create"

#all articles
  get "/articles/page/:page", to: "article#read_all"

#article by id
  get "/articles/findbyid/:id", to:"article#index"

#update by id
  put "/articles/:id", to:"article#update"

#delete by id
  delete "/articles/delete/:id", to: "article#delete"

#find by category
  get "/articles/catgeory", to:  "article#category"

#find by author
  get "/articles/author/:author", to: "article#author"

#find by partial title
  get "/articles/partial/:title", to: "article#partial_title"


#update particular 
  put "/article/update", to: "article#up_particular"


#find between date range
  get "/articles/range", to: "article#date_range"

#user routes
post "/users/register", to: "user#register"





end

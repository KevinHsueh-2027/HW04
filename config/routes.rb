Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })

  get("/login",  { :controller => "sessions", :action => "new" })
  get("/signup", { :controller => "users", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

  resources :places
  resources :entries
  resources :users
  resources :sessions
end
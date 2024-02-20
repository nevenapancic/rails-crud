Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

# TODO
# DATA BRICKS
# generate restaurant model
   # rails generate model restaurant name:string rating:integer
   # rails generate we specify that it is the model later the name of the model and then key value pares name: string, and we also want the rating of it which is a integer
   # this generates migration file and it has a timestrap itself and it creates the model file itself too 
# seed some sample data

# APPLICATIVE BRICKS
# generate restaurants controller

# USER ACTIONS (in silo R->C->V)
# read all restaurants
# read one
# create new
# update one
# delete one

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


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


#now we have created restaurants controller so we add here:

get "restaurants/new", to: "restaurants#new", as:'new_restaurant'
# NEW BEFORE SHOW
#we need two requests:
# 1. GET the restaurant creation form = 1 request
# 2. POST the parameters to create a new restaurant = 1 request
post "restaurants", to: "restaurants#create"
# we have to save it adn we dont need as cause we will never link it to this
get '/restaurants', to: 'restaurants#index'
#index is read all option by convention

# find one by id should look like this
#GET http://localhost:3000/restaurants/4
# so after restaurants we have /4 which is id
get "restaurants/:id", to: "restaurants#show", as: 'restaurant'
# To update some restaurant:
get "restaurants/:id/edit", to: "restaurants#edit", as:'edit_restautant'
# Patch replaces restaurant with new info
patch "restaurants/:id", to: "restaurants#update"
# Delete a restaurant
delete "restaurants/:id", to: "restaurants#destroy", as: 'destroy_restaurant'
end

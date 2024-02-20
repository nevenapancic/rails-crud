class RestaurantsController < ApplicationController
  def index
    #fetch all reastaurants and we put it in instance variable!
    @restaurants = Restaurant.all
  end
  #after this we create index.html.erb in view to display it

  def new
    @restaurant = Restaurant.new
    # Needed to instantiate the form_with
  end

  def create
    @restaurant = create!(params[:restaurant])
    # @restaurant.save (CREATE IS SAVE + NEW)
    redirect_to restaurant_path(@restaurant)
    # redirect is to send them to this page so they see that it is added basically we just send them to see all list of restaurants but even without this it saves it
    # Will raise ActiveModel::ForbiddenAttributesError in order to solve that we need to do this:
    # and private part:
    # private
    # def restaurant_params
    # params.require(:restaurant).permit(:name, :address, :rating)
    # end
    # No need for app/views/restaurants/create.html.erb cause it is something happening behind the scenes post patch and delete dont need a new view cause it is not presented to user so no view
  end

  def show
    # to find one restaurant by index
    @restaurant = Restaurant.find(params[:id].to_i)
    # ovde ga nadjemo i dodelimo instance varijabli @restaurant i onda u view koristimo da mu prezentujemo ime,addresu i rating
    # params is from ruby that console not console but from serve raise
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(params[:restaurant])
    redirect_to restaurant_path(@restaurant)
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # No need for destroy.html.erb
    redirect_to restaurants_path, status: :see_other
    # this status means not to try to find this resto anymore cause it is deleted so just see others 
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
    # this gives us permit to use stuff and it is always same!
    # strong params manually and specifically permit paramenters
  end
end

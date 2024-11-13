class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :destroy, :edit, :update]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  # Action pour enregistrer le restaurant
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      flash[:notice] = 'Restaurant créé avec succès'
      redirect_to restaurants_path
    else
      flash[:alert] = 'Erreur lors de la création du restaurant'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      flash[:notice] = 'Restaurant modifié avec succès'
      redirect_to restaurant_path(@restaurant)
    else
      flash[:alert] = 'Erreur lors de la modification du restaurant'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end

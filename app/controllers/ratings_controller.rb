class RatingsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def new
    @rating = @restaurant.ratings.build
    @rating = Rating.new
  end

  def create
    @rating = @restaurant.ratings.build(rating_params)
    if @rating.save
      redirect_to @restaurant, notice: 'Commentaire ajouté avec succès.'
    else
      flash[:alert] = 'Erreur lors de l’ajout du commentaire.'
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # Permet uniquement les paramètres nécessaires pour un commentaire
  def rating_params
    params.require(:rating).permit(:content, :rating)
  end
end

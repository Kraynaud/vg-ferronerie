class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @categorie = Categorie.find(params[:id])
    @realisations = Realisation.select {|realisation| realisation["categorie_id"].to_i == @categorie.id }
  end
end

def article_params
  params.require(:categorie).permit(:titre, :description, :photo)
end

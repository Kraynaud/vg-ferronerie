class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact]
  def home
    @categories = Categorie.all
  end
end

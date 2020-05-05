class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @realisation = Realisation.find(params[:id])
  end

  def new
    @realisation = Realisation.new
  end

  def create
    @realisation = Realisation.new(product_params)
    if @realisation.save
      create_pictures
      redirect_to realisation_path(@realisation)
    else
      render :new
    end
  end

  private

  def create_pictures
    photos = params.dig(:realisation, :pictures) || []
    photos.each do |photo|
      @realisation.pictures.create(photo: photo)
    end
  end
end

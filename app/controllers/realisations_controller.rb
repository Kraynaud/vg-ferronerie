class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @realisation = Realisation.find(params[:id])
  end
end

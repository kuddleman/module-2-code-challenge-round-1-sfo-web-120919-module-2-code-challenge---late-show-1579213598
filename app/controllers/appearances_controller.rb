class AppearancesController < ApplicationController

  # def index 

  # end

  # def show 

  # end

  def new
    @appearance = Appearance.new
  end

  def create 
    @appearance = Appearance.create(appearance_params)
    #redirect to selected episode's show page
    redirect_to @appearance.episode
  end

  private

  def appearance_params 
    params.require(:appearance).permit(:guest_id, :episode_id)
  end
end
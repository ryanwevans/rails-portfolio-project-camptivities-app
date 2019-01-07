class CampsController < ApplicationController
  before_action :set_camp, only: [:show, :edit, :update, :destroy]


  private

  def set_camp
    @camp = Camp.find_by(id: params[:id])
  end

  def camp_params
    params.require(:camp).permit(:name)
  end

end

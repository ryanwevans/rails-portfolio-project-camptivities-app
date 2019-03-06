class CampsController < ApplicationController
  before_action :set_camp, only: [:show, :edit, :update, :destroy]
  include CampsHelper

  def index
    @camps = Camp.all
  end

  def show
  end

  def new
    @camp = Camp.new
  end

  def create
    create_logic
  end

  def edit
  end

  def update
    update_logic
  end


  private

  def set_camp
    @camp = Camp.find_by(id: params[:id])
  end

  def camp_params
    params.require(:camp).permit(:name, :location, :description)
  end

end

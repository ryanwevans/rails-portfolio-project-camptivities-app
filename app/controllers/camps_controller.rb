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
    @camp = Camp.create(camp_params)
    if @camp.save
      redirect_to camp_path(@camp)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @camp.update(camp_params)
      redirect_to @camp
    else
      render :edit
    end
  end


  private

  def set_camp
    @camp = Camp.find_by(id: params[:id])
  end

  def camp_params
    params.require(:camp).permit(:name, :location, :description)
  end

end

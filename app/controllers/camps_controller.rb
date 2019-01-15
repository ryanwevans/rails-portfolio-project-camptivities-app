class CampsController < ApplicationController
  before_action :set_camp, only: [:show, :edit, :update, :destroy]

  def index
    @camps = Camp.all
  end

  def show
    # @assignment = @camp.activity.assignments.where("camp_counselor_id=?", @current_user.id)
    # @assignments = @camp.activity.assignments.order(:filled)
  end

  def new
    @camp = Camp.new
  end

  def create
    @camp = Camp.create(camp_params)
    if @camp.save
      redirect_to camp_path(@camp)
    else
      if @camp.name==""
        flash[:notice] = "Invalid Entry - Name Cannot Be Blank"
      end
      render action: :new
    end
  end

  def edit
  end

  def update
    if @camp.update(camp_params)
      redirect_to @camp
    else
      if @camp.name==""
        flash[:notice] = "Camp name is required"
      end
      redirect_to :edit
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

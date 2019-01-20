class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    if params[:camp_id]
      @camp = Camp.find_by(id: params[:camp_id])
    else
      @camps = Camp.all
    end
    @activities = Activity.all.order(:camp_id)
  end

  def show
    @assignments = @activity.assignments.order(:filled)
  end

  def new
    if params[:camp_id]
      @camp = Camp.find_by(id: params[:camp_id])
    end
    @activity = Activity.new
  end

  def create
    create_logic
  end

  def edit
  end

  def update
    update_logic
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end


  private

  def set_activity
    @activity = Activity.find_by(id: params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :camp_id)
  end

  def create_logic
    @activity = Activity.create(activity_params)
    if @activity.save
      2.times do
        @activity.assignments.create(:activity_id => @activity.id, :filled => false, :rating => 0)
      end
      redirect_to activity_path(@activity)
    else
      if @activity.name==""
        flash[:notice] = "Activity Name is required"
      elsif @activity.description==""
        flash[:notice] = "Description is required"
      elsif @activity.camp_id==""
        flash[:notice] = "Camp Name is required"
      end
      redirect_to new_activity_path
    end
  end

  def update_logic
    if @activity.update(activity_params)
      redirect_to @activity
    else
      if @activity.name==""
        flash[:notice] = "Activity Name is required"
      else @activity.description==""
        flash[:notice] = "Description is required"
      end
      redirect_to :edit
    end
  end

end

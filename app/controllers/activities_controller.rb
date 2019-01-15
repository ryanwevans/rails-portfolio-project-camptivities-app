class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all.order(:camp_id)
    @camps = Camp.all
  end

  def show
    @assignment = @activity.assignments.where("camp_counselor_id=?", @current_user.id)
    @assignments = @activity.assignments.order(:filled)
  end

  def new
    @activity = Activity.new
  end

  def create
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

  def edit
  end

  def update
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

end

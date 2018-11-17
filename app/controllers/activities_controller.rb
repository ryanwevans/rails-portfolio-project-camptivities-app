class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
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
    if @activity.save!
      redirect_to activity_path(@activity)
    else
      redirect_to :new
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to @activity
    else
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
    params.require(:activity).permit(:name, :description, :counselors_needed)
  end

end

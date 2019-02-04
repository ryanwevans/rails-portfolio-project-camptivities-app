class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  include ActivitiesHelper

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
    @comments = Comment.where("activity_id = ?", @activity.id)
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

end

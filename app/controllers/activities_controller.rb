class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  include ActivitiesHelper

  def index
    params[:camp_id] ? (@camp = Camp.find_by(id: params[:camp_id])) : (@camps = Camp.all)
    # @activities = Activity.all.order(:camp_id) <= not needed
    # move to
  end

  def show
    @assignments = @activity.assignments.order(:filled)
    @comments = Comment.where("activity_id = ?", @activity.id)
    # activity.comments
  end

  def new
    @camp = Camp.find_by(id: params[:camp_id]) if params[:camp_id]
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
        # add :camp_id to assignment creation below
        @activity.assignments.create(:activity_id => @activity.id, :camp_id => @activity.camp_id, :filled => false, :rating => 0)
      end
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def update_logic
    if @activity.update(activity_params)
      redirect_to @activity
    else
      render :edit
    end
  end

end

class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]

  def index
    if params[:camp_counselor_id]
      @assignments = CampCounselor.find(params[:camp_counselor_id]).assignments
    elsif params[:activity_id]
      @assignments = Activity.find(params[:activity_id]).assignments
    else
      @assignments = Assignment.all
    end
  end

  def show
    @activity = @assignment.activity
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.create(assignment_params)
    if @assignment.save!
      redirect_to assignments_path(@assignment)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @assignment.update(assignment_params)
      redirect_to @assignment
    else
      render :edit
    end
  end

  def destroy
    @assignment.destroy
    redirect_to assignments_path
  end


  private

  def set_assignment
    @assignment = Assignment.find_by(id: params[:id])
  end

  def assignment_params
    params.require(:assignment).permit(:name, :filled, :leader_needed, :camp_counselor_id, :activity_id)
  end

end

class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  include AssignmentsHelper

  def index
    set_index_variables
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

# not sure how to 'render' to the nested path here
  def update
    if params[:assignment]==nil
      flash[:notice] = "Invalid Entry - Please Try Again"
      redirect_to camp_counselor_assignments_path(current_user)
    elsif @assignment.update(assignment_params)
      redirect_to camp_counselor_assignments_path(current_user)
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
    params.require(:assignment).permit(:name, :filled, :rating, :camp_counselor_id, :activity_id, :camp_id)
  end


  def set_index_variables
    if params[:camp_counselor_id]
      @counselor = CampCounselor.find_by(id: params[:camp_counselor_id])
      @assignments = @counselor.assignments
    else
      @assignments = Assignment.all
    end
    @camps = Camp.all
  end

end

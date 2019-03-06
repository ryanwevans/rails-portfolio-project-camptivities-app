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
    create_logic
  end

  def edit
  end

  def update
    update_logic
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

end

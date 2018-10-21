class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]

  def index
    @assignments = Assignment.all
  end

  def show
  end

  def new
    @assignment = Assignment.nre
  end

  def create
    @assignment = Assignment.create(assignment_params)
    if @assignment.save
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
    params.require(:assignment).permit(:name, :filled)
  end

end

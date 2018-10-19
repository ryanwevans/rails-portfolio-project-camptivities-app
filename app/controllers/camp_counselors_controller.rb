class CampCounselorsController < ApplicationController
  before_action :set_counselor, only: [:show, :edit, :update, :destroy]

  def new
    @counselor = CampCounselor.new
  end

  def create
    @counselor = CampCounselor.create(counselor_params)
    if @counselor.save
      session[:user_id] = @counselor.id
      redirect_to camp_counselor_path(@counselor)
    else
      render :new
    end
  end

  def show
  end

  def edit

  end

  def update
    if @counselor.update(counselor_params)
      redirect_to camp_counselor_path(@counselor)
    else
      render :edit
    end
  end

  def destroy
    @counselor.destroy
    redirect_to new_camp_counselor_path
  end


  private

  def set_counselor
    @counselor = CampCounselor.find_by(id: params[:id])
  end

  def counselor_params
    params.require(:counselor).permit(:name, :password)
  end
end

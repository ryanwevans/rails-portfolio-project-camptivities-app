class CampCounselorsController < ApplicationController
  skip_before_action :require_log_in, only: [:new, :create]
  before_action :set_counselor, only: [:show, :edit, :update, :destroy]
  include CampCounselorsHelper

  def new
    @counselor = CampCounselor.new
  end

  def create
    create_logic
  end

  def show
  end

  def edit
  end

  def update
    update_logic
  end

  def destroy
    @counselor.destroy
    redirect_to signin_path
  end


  private

  def set_counselor
    @counselor = CampCounselor.find_by(id: session[:user_id])
  end

  def counselor_params
    params.require(:camp_counselor).permit(:name, :email, :age, :admin, :uid, :provider, :password)
  end
end

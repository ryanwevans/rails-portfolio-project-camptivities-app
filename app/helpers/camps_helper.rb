module CampsHelper

  def create_logic
    @camp = Camp.create(camp_params)
    if @camp.save
      redirect_to camp_path(@camp)
    else
      if @camp.name==""
        flash[:notice] = "Camp Name is required"
      elsif @camp.location==""
        flash[:notice] = "Location is required"
      elsif @camp.description==""
        flash[:notice] = "Description is required"
      end
      redirect_to new_camp_path
    end
  end

  def update_logic
    if @camp.update(camp_params)
      redirect_to @camp
    else
      if @camp.name==""
        flash[:notice] = "Camp name is required"
      end
      redirect_to :edit
    end
  end

end

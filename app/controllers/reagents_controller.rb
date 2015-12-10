class ReagentsController < ApplicationController
  def new
    @reagent = Reagent.new
  end
  
  def create
    @reagent = Reagent.new(reagent_params)
    
    if @reagent.save
      redirect_to new_reagent_path, notice: "Successfully save."
    else
      redirect_to new_reagent_path, notice: "Failed to save reagent."
    end
  end
  
  private
    def reagent_params
      params.require(:reagent).permit(:reagent_name, :expiration, :flex, :flex_per_box, :test_per_flex)
    end
  
  
  
end
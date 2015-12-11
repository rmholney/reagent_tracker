class ReagentsController < ApplicationController
  def new
    @reagent = Reagent.new
  end
  
  def create
    @reagent = Reagent.new(reagent_params)
    
    if @reagent.save
      flash[:success] = "Reagent saved."
      redirect_to new_reagent_path
    else
      flash[:danger] = "Failed to save."
      redirect_to new_reagent_path
    end
  end
  
  def index
    @recipes = Recipe.all
  end
  
  private
    def reagent_params
      params.require(:reagent).permit(:reagent_name, :expiration, :flex, :flex_per_box, :test_per_flex)
    end
  
  
  
end
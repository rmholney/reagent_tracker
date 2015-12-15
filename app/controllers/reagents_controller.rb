class ReagentsController < ApplicationController
  def new
    @reagent = Reagent.new
  end
  
  def create
    @reagent = Reagent.new(reagent_params)
    
    if @reagent.save
      flash[:success] = "Reagent saved."
      redirect_to reagents_path
    else
      flash[:danger] = "Failed to save."
      render :new
    end
    
  end
  
  def edit
    @reagent = Reagent.find(params[:id])
  end
  
  def index
    @reagents = Reagent.all
  end
  
  private
    def reagent_params
      params.require(:reagent).permit(:reagent_name, :lot, :expiration, :flex, :flex_per_box, :test_per_flex)
    end
end
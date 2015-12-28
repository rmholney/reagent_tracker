class ReagentsController < ApplicationController
  
  def show
    @reagent = Reagent.find(params[:id])
  end
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
  
  def update
    @reagent = Reagent.find(params[:id])
    
    if @reagent.update(reagent_params)
      flash[:success] = "Reagent successfully updated."
      redirect_to reagents_path
    else
      flash[:danger] = "Reagent failed to update." 
      render :edit
    end
  end
  
  def index
    @reagents = Reagent.all
  end
  
  def destroy
    @reagent = Reagent.find(params[:id])
    @reagent.destroy
    
    redirect_to reagents_path
  end
  
  private
    def reagent_params
      params.require(:reagent).permit(:reagent_name, :lot, :expiration, :flex, :flex_per_box, :test_per_flex)
    end
end
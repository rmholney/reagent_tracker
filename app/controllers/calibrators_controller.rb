class CalibratorsController < ApplicationController
  
  def index
    @calibrators = Calibrator.all
  end
  
  def show
    @calibrator = Calibrator.find(params[:id])
  end
  def new
    @calibrator = Calibrator.new
  end
  
  def create
    @calibrator = Calibrator.new(calibrator_params)
    
    if @calibrator.save
      flash[:success] = "Calibrator saved."
      redirect_to calibrators_path
    else
      flash[:danger] = "Failed to saved."
      
      render :new
      
      
    end
  end
  
  def edit
    @calibrator = Calibrator.find(params[:id])
  end
  
  def update
    @calibrator = Calibrator.find(params[:id])
    
    if @calibrator.update(calibrator_params)
      flash[:success] = "Calibrator successfully updated"
      redirect_to calibrators_path
    else
      flash[:danger] = "Calibrator failed to update"
      render :edit
    end
  end
  
  private
    def calibrator_params
      params.require(:calibrator).permit(:name, :expiration, :lot, :sets, :box)
    end
  
  
  
end
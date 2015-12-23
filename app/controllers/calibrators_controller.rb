class CalibratorsController < ApplicationController
  
  def index
    @calibrators = Caibrator.all
    
  end
  def new
    @calibrator = Calibrator.new
  end
  
  def create
    @calibrator = Calibrator.new(calibrator_params)
    
    if @calibrator.save
      flash[:success] = "Calibrator saved."
      redirect_to new_calibrator_path
    else
      flash[:danger] = "Failed to save."
      redirect_to new_calibrator_path
    end
  end
  
  def edit
    @calibrator = Calibrator.find(params[:id])
  end
  
  def update
  end
  
  private
    def calibrator_params
      params.require(:calibrator).permit(:name, :expiration, :lot, :sets, :box)
    end
  
  
  
end
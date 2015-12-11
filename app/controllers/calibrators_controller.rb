class CalibratorsController < ApplicationController
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
  
  private
    def calibrator_params
      params.require(:calibrator).permit(:name, :expiration, :lot, :box)
    end
  
  
  
end
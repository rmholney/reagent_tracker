class ReagentsController < ApplicationController
  def new
    @contact = Reagent.new
  end
  
  def create
  end
  
end
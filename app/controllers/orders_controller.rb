class OrdersController < ApplicationController
 
  def index
    @orders = Order.all
  end
  
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:success] = "Order placed"
      redirect_to orders_path
    else
      flash[:danger] = "Order failed"
      render :new
    end
  end
  
  def edit
    @order = Order.find(params[:id])
  end
  
  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      flash[:success] = "Order successfully updated"
      redirect_to orders_path
    else
      flash[:danger] = "Failed to update order"
      render :edit
    end
  end
  
  def destroy
  @order = Order.find(params[:id])
  @order.destroy
  redirect_to orders_path
  end
  
private
  def order_params
    params.require(:order).permit(:name, :box, :type)
  end
end

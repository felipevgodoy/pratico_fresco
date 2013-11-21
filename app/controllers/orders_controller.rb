class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @order = Order.new
    @order.user_id = params[:user_id]
    @order.status = params[:status]
    @order.data = params[:data]
    
    if @order.save
      redirect_to orders_url
    else
      render 'new'
    end
  end

  def edit
    @order = Order.find_by(:id => params[:id])
  end

  def update
    @order = Order.find_by(:id => params[:id])
    @order.user_id = params[:user_id]
    @order.status = params[:status]
    @order.data = params[:data]
    
    if @order.save
      redirect_to orders_url
    else
      render 'new'
    end
  end

  def destroy
    @order = Order.find_by(:id => params[:id])
    @order.destroy
    redirect_to orders_url
  end
end

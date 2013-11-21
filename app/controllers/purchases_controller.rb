class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @purchase = Purchase.new
    @purchase.order_id = params[:order_id]
    @purchase.item_id = params[:item_id]
    @purchase.quantidade = params[:quantidade]
    
    if @purchase.save
      redirect_to purchases_url
    else
      render 'new'
    end
  end

  def edit
    @purchase = Purchase.find_by(:id => params[:id])
  end

  def update
    @purchase = Purchase.find_by(:id => params[:id])
    @purchase.order_id = params[:order_id]
    @purchase.item_id = params[:item_id]
    @purchase.quantidade = params[:quantidade]
    
    if @purchase.save
      redirect_to purchases_url
    else
      render 'new'
    end
  end

  def destroy
    @purchase = Purchase.find_by(:id => params[:id])
    @purchase.destroy
    redirect_to purchases_url
  end
end

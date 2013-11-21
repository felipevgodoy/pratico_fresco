class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @item = Item.new
    @item.categoria = params[:categoria]
    @item.subcategoria = params[:subcategoria]
    @item.item = params[:item]
    @item.marca = params[:marca]
    @item.descricao = params[:descricao]
    @item.preco = params[:preco]
    @item.imagem = params[:imagem]
    
    if @item.save
      redirect_to items_url
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find_by(:id => params[:id])
  end

  def update
    @item = Item.find_by(:id => params[:id])
    @item.categoria = params[:categoria]
    @item.subcategoria = params[:subcategoria]
    @item.item = params[:item]
    @item.marca = params[:marca]
    @item.descricao = params[:descricao]
    @item.preco = params[:preco]
    @item.imagem = params[:imagem]
    
    if @item.save
      redirect_to items_url
    else
      render 'new'
    end
  end

  def destroy
    @item = Item.find_by(:id => params[:id])
    @item.destroy
    redirect_to items_url
  end
end

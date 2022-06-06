class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy ]

  def index
    @items = Item.all
  end

  def show

  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    # @item.warehouse = Warehouse.find(params[:item][:warehouse_id])
    @item.warehouse = Warehouse.find(params[:item][:warehouse_id])
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    @item.update(item_params)
    if @item.save
      redirect_to items_path
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:category, :warehouse_id)
  end
end

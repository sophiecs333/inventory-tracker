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
    @item.warehouse = Warehouse.find(params[:warehouse_id])
    # @item.warehouse = @warehouse
    if @item.save
      redirect_to items_path, notice: 'Your new item was successfully created.'
    else
      render :new, notice: 'Error, your item was not saved, try again.'
    end
  end

  def edit

  end

  def update
    @item.update(item_params)
    if @item.save
      redirect_to items_path, notice: 'Your item was successfully updated.'
    else
      render :edit, notice: 'Error, your item was not properly edited, try again.'
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
    params.require(:item).permit(:category)
  end
end

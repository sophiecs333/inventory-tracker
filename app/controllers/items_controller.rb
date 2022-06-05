class ItemsController < ApplicationController
  # before_action :set_item

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item), notice: 'Your new list was successfully created.'
    else
      render :new, notice: 'Error, your list was not saved, try again.'
    end
  end

  # def edit

  # end

  # def update
  #   @item.update(item_params)
  #   if @item.save
  #     redirect_to item_path(@item)
  #   else
  #     render :edit
  #   end
  # end

  private

  # def set_item
  #   @item = Item.find(params[:id])
  # end

  def item_params
    params.require(:item).permit(:category, :quantity)
  end
end

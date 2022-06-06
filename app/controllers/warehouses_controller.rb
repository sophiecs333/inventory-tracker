class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:show ]

  def index
    @warehouses = Warehouse.all
  end

  def show

  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    if @warehouse.save
      redirect_to warehouse_path(@warehouse)
    else
      render :new
    end
  end

  private

  def set_warehouse
    @warehouse = Warehouse.find(params[:id])
  end

  def warehouse_params
    params.require(:warehouse).permit(:location, :item_id)
  end
end

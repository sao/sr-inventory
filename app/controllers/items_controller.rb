class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new item_params

    if @item.save
      redirect_to items_path, notice: "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find params[:id]
  end

  def update
    @item = Item.find params[:id]

    if @item.update item_params
      redirect_to items_path, notice: "Item was updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find params[:id]

    if @item.destroy
      redirect_to items_path, notice: "Item has been deleted."
    else
      redirect_to items_path, error: "There was a problem deleting this item."
    end
  end

  private

    def item_params
      params.require(:item).permit!
    end
end

class ItemEntriesController < ApplicationController
  def index
    @item_entries = ItemEntry.all
  end

  def new
    @item_entry = ItemEntry.new
  end

  def create
    @item_entry = ItemEntry.new item_entry_params
    @item_entry.user = current_user

    if @item_entry.save
      redirect_to item_entries_path, notice: "Item entry created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item_entry = ItemEntry.find params[:id]
  end

  def update
    @item_entry = ItemEntry.find params[:id]

    if @item_entry.update item_entry_params
      redirect_to item_entries_path, notice: "Item entry was updated succesfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item_entry = ItemEntry.find params[:id]

    if @item_entry.destroy
      redirect_to item_entries_path, notice: "Item entry has been deleted."
    else
      redirect_to item_entries_path, error: "There was a problem deleting this entry."
    end
  end

  private

    def item_entry_params
      params.require(:item_entry).permit!
    end

end

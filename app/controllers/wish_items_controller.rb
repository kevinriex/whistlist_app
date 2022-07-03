class WishItemsController < ApplicationController
  before_action :set_wish_list
  before_action :set_wish_item, only: [:show, :edit, :update, :destroy]

  # GET wish_lists/1/wish_items
  def index
    @wish_items = @wish_list.wish_items
  end

  # GET wish_lists/1/wish_items/1
  def show
  end

  # GET wish_lists/1/wish_items/new
  def new
    @wish_item = @wish_list.wish_items.build
  end

  # GET wish_lists/1/wish_items/1/edit
  def edit
  end

  # POST wish_lists/1/wish_items
  def create
    @wish_item = @wish_list.wish_items.build(wish_item_params)

    if @wish_item.save
      redirect_to([@wish_item.wish_list, @wish_item], notice: 'Wish item was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT wish_lists/1/wish_items/1
  def update
    if @wish_item.update_attributes(wish_item_params)
      redirect_to([@wish_item.wish_list, @wish_item], notice: 'Wish item was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE wish_lists/1/wish_items/1
  def destroy
    @wish_item.destroy

    redirect_to wish_list_wish_items_url(@wish_list)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish_list
      @wish_list = WishList.find(params[:wish_list_id])
    end

    def set_wish_item
      @wish_item = @wish_list.wish_items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wish_item_params
      params.require(:wish_item).permit(:description, :link, :completed, :completed_at, :wish_list_id)
    end
end

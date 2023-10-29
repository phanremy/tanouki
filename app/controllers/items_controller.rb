# frozen_string_literal: true

class ItemsController < ApplicationController
  load_and_authorize_resource
  before_action :set_item, only: %i[edit update]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      flash.now[:error] = @item.errors.full_messages
      render_flash
    end
  end

  def edit; end

  def update
    if @item.update(item_params)
      flash.now[:success] = 'Item was successfully updated'
      redirect_to items_path
    else
      flash.now[:error] = @item.errors.full_messages
      render_flash
    end
  end

  def destroy
    if @item.destroy
      flash[:success] = 'Item was successfully deleted.'
      redirect_to items_path
    else
      flash.now[:error] = 'Something went wrong'
      render_flash
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:description, :state, :user_id)
  end
end

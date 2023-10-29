# frozen_string_literal: true

class ItemsController < ApplicationController
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

  def item_params
    params.require(:item).permit(:description, :state, :user_id)
  end
end

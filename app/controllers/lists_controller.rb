# frozen_string_literal: true

class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      flash.now[:error] = @list.errors.full_messages
      render_flash
    end
  end

  def list_params
    params.require(:list).permit(:description, :user_id)
  end
end

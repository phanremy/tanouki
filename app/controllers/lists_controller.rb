# frozen_string_literal: true

class ListsController < ApplicationController
  load_and_authorize_resource
  before_action :set_list, only: %i[edit show update]

  def index
    @lists = List.accessible_by(current_ability)
  end

  def show; end

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

  def edit; end

  def update
    if @list.update(list_params)
      flash.now[:success] = 'List was successfully updated'
      redirect_to @list
    else
      flash.now[:error] = @list.errors.full_messages
      render_flash
    end
  end

  def destroy
    if @list.destroy
      flash[:success] = 'List was successfully deleted.'
      redirect_to lists_path
    else
      flash.now[:error] = 'Something went wrong'
      render_flash
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:description, :user_id)
  end
end

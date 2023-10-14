# frozen_string_literal: true

class AddAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :confirmed, :boolean
  end
end

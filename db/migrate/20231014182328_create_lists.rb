# frozen_string_literal: true

class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :description, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

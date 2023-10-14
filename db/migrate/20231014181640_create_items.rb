# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :user, null: false, foreign_key: true
      t.string :description, null: false
      t.string :state, null: false

      t.timestamps
    end
  end
end

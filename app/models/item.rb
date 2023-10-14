# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :user
  has_many :list_items, dependent: :destroy
  has_many :lists, through: :list_items

  validates :description, :state, presence: true
end

# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :user
  has_many :list_items, dependent: :destroy
  has_many :items, through: :list_items

  validates :description, presence: true
end

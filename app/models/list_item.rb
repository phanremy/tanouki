# frozen_string_literal: true

class ListItem < ApplicationRecord
  belongs_to :item
  belongs_to :list
end

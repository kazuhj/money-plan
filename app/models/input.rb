class Input < ApplicationRecord
  belongs_to :user
  has_meny :income_values
  has_meny :cost_valurs
  has_one :month
end

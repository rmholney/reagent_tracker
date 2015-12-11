class Reagent < ActiveRecord::Base
  validates :reagent_name, presence: true, length: { maximum: 5 }
  validates :lot, presence: true
  validates :expiration, presence: true
  validates :flex, presence: true
  validates :flex_per_box, presence: true
  validates :test_per_flex, presence: true
end
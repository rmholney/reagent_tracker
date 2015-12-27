class Reagent < ActiveRecord::Base
  belongs_to :calibrator
  before_save { self.reagent_name = reagent_name.upcase}
  before_save { self.lot = lot.upcase }
  validates :reagent_name, presence: true, length: { maximum: 5 }
  validates :expiration, presence: true
  validates :flex, presence: true
  validates :flex_per_box, presence: true
  validates :test_per_flex, presence: true
  validates :lot, presence: true
  
end
class Calibrator < ActiveRecord::Base
  has_many :reagents
  before_save { self.name = name.upcase }
  before_save { self.lot = lot.upcase }
  validates :sets, presence: true
  validates :name, presence: true, length: { maximum: 5 }
  validates :expiration, presence: true
  validates :lot, presence: true
  validates :box, presence: true
  
end
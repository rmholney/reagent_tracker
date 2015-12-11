class Calibrator < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 5 }
  validates :expiration, presence: true
  validates :lot, presence: true
  validates :box, presence: true
end
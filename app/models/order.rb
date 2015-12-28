class Order < ActiveRecord::Base
  before_save { self.name = name.upcase }
  validates :name, presence: true, length: { maximum: 5 }
  validates :box, presence: true
  validates :type, presence:true
end

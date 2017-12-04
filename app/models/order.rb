class Order < ActiveRecord::Base
  has_many :order_items

  validates :status, :presence => true
  validates :total_price, :presence => true
  validates :total_price, numericality: { only_integer: true }
end

class Product < ActiveRecord::Base
  has_many :order_items

  validates :price, :presence => true
  validates :name, :presence => true
end

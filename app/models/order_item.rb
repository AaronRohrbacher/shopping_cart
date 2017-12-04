class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  # validates :quantity, :presence => true
  # validates :order, numericality: { only_integer: true }
end

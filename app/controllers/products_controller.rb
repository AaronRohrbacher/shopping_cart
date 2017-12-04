class ProductsController < ApplicationController

  def index
    @books = Book.get_books

    @products = Product.all
    @order_item = current_order.order_items.new
  end
end

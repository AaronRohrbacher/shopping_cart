class ProductsController < ApplicationController

  def index
    new_books = Book.new
    @books = new_books.get_books

    @products = Product.all
    @order_item = current_order.order_items.new
  end
end

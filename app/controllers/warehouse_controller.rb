class WarehouseController < ApplicationController
  def index
  	@product_tickets = Product.where(type_of_product: TypeOfProduct.find_by_name("ticket"))
  end

  def index_all_tickets
  	@product_tickets = Product.where(type_of_product: TypeOfProduct.find_by_name("ticket"))
  end
end

class WarehouseController < ApplicationController
  def index
  	@product_tickets = Product.where(type_of_product: TypeOfProduct.find_by_name("ticket"))
  end

  def index_all_tickets
  	@product_tickets = Product.where(type_of_product: TypeOfProduct.find_by_name("ticket"))
  end

  def pending
    @orden_requests = OrdenRequest.pending
  end

  def processed
    @orden_requests = OrdenRequest.processed
  end

  def canceled
    @orden_requests = OrdenRequest.canceled
  end

  def view_orden_request
    @orden_request = OrdenRequest.find(params[:id])
  end

  def approval_request_modal
    if params[:orden_request_id].present?
      @orden_request_out = OrdenRequest.find(params[:orden_request_id].to_i)

      

      @product_tickets = @orden_request_out.products
    end
  end

  def refuse_request_modal

  end

end

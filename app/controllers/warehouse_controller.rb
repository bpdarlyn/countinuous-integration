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

  def save_approval
    if params[:orden_request][:id].present?

      # all this has to be in a model

      orden_request = OrdenRequest.find(params[:orden_request][:id].to_i)
      # create outflow
      outflow = Outflow.new
      outflow.outflow_date = Time.now
      outflow.orden_request_id = orden_request.id
      outflow.save

      orden_request.orden_request_details.each do |orden_request_detail|
        product = orden_request_detail.product
        numbers_secuency = product.request_quantity_numbers(orden_request_detail.quantity)

        outflow_detail = OutflowDetail.new
        outflow_detail.outflow = outflow
        outflow_detail.product = product
        outflow_detail.quantity = orden_request_detail.quantity
        outflow_detail.start_number = numbers_secuency[0]
        outflow_detail.end_number = numbers_secuency[1]
        outflow_detail.save

        boxes = product.get_boxes_used(orden_request_detail.quantity)

        order_request_product_quantity = orden_request_detail.quantity
        boxes.each do |box|

          ticket_box = TicketBox.find(box)
          historical_box_active = ticket_box.historical_box_active

          availables_tickets = historical_box_active.available
          not_available_tickets = historical_box_active.not_available
          box_quantity = ticket_box.quantity


          result = order_request_product_quantity - availables_tickets
          order_request_product_quantity = order_request_product_quantity - availables_tickets

          if result > 0
            new_available = result
            new_not_available = new_available + not_available_tickets

          else
            new_available = 0
            new_not_available = box_quantity
          end

          historical_box_active.update(status: false)

          historical_box = HistoricalBox.new
        	historical_box.ticket_box_id = ticket_box.id
        	historical_box.status = true
        	historical_box.available = new_available
        	historical_box.not_available = new_not_available
        	historical_box.outflow_detail_id = outflow_detail.id
        	historical_box.save


        end

      end
      orden_request.update(status: 1)

      redirect_to pending_path, notice: 'Entrega realizada con exito, su stock ha sido descontado, por favor retire la cantidad de tickets'
    else
      # show error message
      redirect_to pending_path
    end

    # redirect to show, with state


  end

  def refuse_request_modal

  end

end

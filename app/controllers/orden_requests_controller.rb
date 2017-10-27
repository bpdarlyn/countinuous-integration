class OrdenRequestsController < ApplicationController
  before_action :set_orden_request, only: [:show, :edit, :update, :destroy]

  # GET /orden_requests
  # GET /orden_requests.json
  def index
    @orden_requests = OrdenRequest.all
  end

  # GET /orden_requests/1
  # GET /orden_requests/1.json
  def show
  end

  # GET /orden_requests/new
  def new
    @orden_request = OrdenRequest.new
  end

  # GET /orden_requests/1/edit
  def edit
  end

  # POST /orden_requests
  # POST /orden_requests.json
  def create

    @orden_request = OrdenRequest.new(orden_request_params)
    @orden_request.date_orden = Time.now
    event = Event.find_or_create_by!(name: params[:orden_request][:event], event_date: params[:orden_request][:event_date], type_of_event: TypeOfEvent.find_or_create_by(name: "Default"))
    @orden_request.event_id = event.id

    respond_to do |format|
      if @orden_request.save
        format.html { redirect_to @orden_request, notice: 'Orden request was successfully created.' }
        format.json { render :show, status: :created, location: @orden_request }
      else
        format.html { render :new }
        format.json { render json: @orden_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orden_requests/1
  # PATCH/PUT /orden_requests/1.json
  def update
    respond_to do |format|
      event = Event.find_or_create_by!(name: params[:orden_request][:event], event_date: params[:orden_request][:event_date], type_of_event: TypeOfEvent.find_or_create_by(name: "Default"))
      @orden_request.event_id = event.id
      if @orden_request.update(orden_request_params)
        format.html { redirect_to @orden_request, notice: 'Orden request was successfully updated.' }
        format.json { render :show, status: :ok, location: @orden_request }
      else
        format.html { render :edit }
        format.json { render json: @orden_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_requests/1
  # DELETE /orden_requests/1.json
  def destroy
    @orden_request.destroy
    respond_to do |format|
      format.html { redirect_to orden_requests_url, notice: 'Orden request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden_request
      @orden_request = OrdenRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orden_request_params
      params.require(:orden_request).permit(:date_orden, :request_number, :personal_in_charge_id, :event, :price_by_ticket, :event_id, :event_date, :ticket_quantity,
                                            :orden_request_details_attributes => [:id, :product_id, :quantity, :_destroy] )
    end
end

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
      params.require(:orden_request).permit(:date_orden, :request_number, :in_charge, :event, :price_by_ticket, :event_id)
    end
end

class OrdenRequestDetailsController < ApplicationController
  before_action :set_orden_request_detail, only: [:show, :edit, :update, :destroy]

  # GET /orden_request_details
  # GET /orden_request_details.json
  def index
    @orden_request_details = OrdenRequestDetail.all
  end

  # GET /orden_request_details/1
  # GET /orden_request_details/1.json
  def show
  end

  # GET /orden_request_details/new
  def new
    @orden_request_detail = OrdenRequestDetail.new
  end

  # GET /orden_request_details/1/edit
  def edit
  end

  # POST /orden_request_details
  # POST /orden_request_details.json
  def create
    @orden_request_detail = OrdenRequestDetail.new(orden_request_detail_params)

    respond_to do |format|
      if @orden_request_detail.save
        format.html { redirect_to @orden_request_detail, notice: 'Orden request detail was successfully created.' }
        format.json { render :show, status: :created, location: @orden_request_detail }
      else
        format.html { render :new }
        format.json { render json: @orden_request_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orden_request_details/1
  # PATCH/PUT /orden_request_details/1.json
  def update
    respond_to do |format|
      if @orden_request_detail.update(orden_request_detail_params)
        format.html { redirect_to @orden_request_detail, notice: 'Orden request detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @orden_request_detail }
      else
        format.html { render :edit }
        format.json { render json: @orden_request_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_request_details/1
  # DELETE /orden_request_details/1.json
  def destroy
    @orden_request_detail.destroy
    respond_to do |format|
      format.html { redirect_to orden_request_details_url, notice: 'Orden request detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden_request_detail
      @orden_request_detail = OrdenRequestDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orden_request_detail_params
      params.require(:orden_request_detail).permit(:orden_request_id, :product_id, :quantity)
    end
end

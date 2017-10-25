class InflowDetailsController < ApplicationController
  before_action :set_inflow_detail, only: [:show, :edit, :update, :destroy]

  # GET /inflow_details
  # GET /inflow_details.json
  def index
    @inflow_details = InflowDetail.all
  end

  # GET /inflow_details/1
  # GET /inflow_details/1.json
  def show
  end

  # GET /inflow_details/new
  def new
    @inflow_detail = InflowDetail.new
  end

  # GET /inflow_details/1/edit
  def edit
  end

  # POST /inflow_details
  # POST /inflow_details.json
  def create
    @inflow_detail = InflowDetail.new(inflow_detail_params)

    respond_to do |format|
      if @inflow_detail.save
        format.html { redirect_to @inflow_detail, notice: 'Inflow detail was successfully created.' }
        format.json { render :show, status: :created, location: @inflow_detail }
      else
        format.html { render :new }
        format.json { render json: @inflow_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inflow_details/1
  # PATCH/PUT /inflow_details/1.json
  def update
    respond_to do |format|
      if @inflow_detail.update(inflow_detail_params)
        format.html { redirect_to @inflow_detail, notice: 'Inflow detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @inflow_detail }
      else
        format.html { render :edit }
        format.json { render json: @inflow_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inflow_details/1
  # DELETE /inflow_details/1.json
  def destroy
    @inflow_detail.destroy
    respond_to do |format|
      format.html { redirect_to inflow_details_url, notice: 'Inflow detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inflow_detail
      @inflow_detail = InflowDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inflow_detail_params
      params.require(:inflow_detail).permit(:product_id, :ticket_boxes_id, :start_number, :end_number, :quantity)
    end
end

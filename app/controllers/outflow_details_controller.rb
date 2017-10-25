class OutflowDetailsController < ApplicationController
  before_action :set_outflow_detail, only: [:show, :edit, :update, :destroy]

  # GET /outflow_details
  # GET /outflow_details.json
  def index
    @outflow_details = OutflowDetail.all
  end

  # GET /outflow_details/1
  # GET /outflow_details/1.json
  def show
  end

  # GET /outflow_details/new
  def new
    @outflow_detail = OutflowDetail.new
  end

  # GET /outflow_details/1/edit
  def edit
  end

  # POST /outflow_details
  # POST /outflow_details.json
  def create
    @outflow_detail = OutflowDetail.new(outflow_detail_params)

    respond_to do |format|
      if @outflow_detail.save
        format.html { redirect_to @outflow_detail, notice: 'Outflow detail was successfully created.' }
        format.json { render :show, status: :created, location: @outflow_detail }
      else
        format.html { render :new }
        format.json { render json: @outflow_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outflow_details/1
  # PATCH/PUT /outflow_details/1.json
  def update
    respond_to do |format|
      if @outflow_detail.update(outflow_detail_params)
        format.html { redirect_to @outflow_detail, notice: 'Outflow detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @outflow_detail }
      else
        format.html { render :edit }
        format.json { render json: @outflow_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outflow_details/1
  # DELETE /outflow_details/1.json
  def destroy
    @outflow_detail.destroy
    respond_to do |format|
      format.html { redirect_to outflow_details_url, notice: 'Outflow detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outflow_detail
      @outflow_detail = OutflowDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outflow_detail_params
      params.require(:outflow_detail).permit(:outflow_id, :product_id, :quantity, :start_number, :end_number)
    end
end

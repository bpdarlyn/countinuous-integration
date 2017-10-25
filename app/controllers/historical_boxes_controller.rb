class HistoricalBoxesController < ApplicationController
  before_action :set_historical_box, only: [:show, :edit, :update, :destroy]

  # GET /historical_boxes
  # GET /historical_boxes.json
  def index
    @historical_boxes = HistoricalBox.all
  end

  # GET /historical_boxes/1
  # GET /historical_boxes/1.json
  def show
  end

  # GET /historical_boxes/new
  def new
    @historical_box = HistoricalBox.new
  end

  # GET /historical_boxes/1/edit
  def edit
  end

  # POST /historical_boxes
  # POST /historical_boxes.json
  def create
    @historical_box = HistoricalBox.new(historical_box_params)

    respond_to do |format|
      if @historical_box.save
        format.html { redirect_to @historical_box, notice: 'Historical box was successfully created.' }
        format.json { render :show, status: :created, location: @historical_box }
      else
        format.html { render :new }
        format.json { render json: @historical_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historical_boxes/1
  # PATCH/PUT /historical_boxes/1.json
  def update
    respond_to do |format|
      if @historical_box.update(historical_box_params)
        format.html { redirect_to @historical_box, notice: 'Historical box was successfully updated.' }
        format.json { render :show, status: :ok, location: @historical_box }
      else
        format.html { render :edit }
        format.json { render json: @historical_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historical_boxes/1
  # DELETE /historical_boxes/1.json
  def destroy
    @historical_box.destroy
    respond_to do |format|
      format.html { redirect_to historical_boxes_url, notice: 'Historical box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historical_box
      @historical_box = HistoricalBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historical_box_params
      params.require(:historical_box).permit(:ticket_box_id, :status, :available, :not_available, :inflow_detail_id, :outflow_integer_id)
    end
end

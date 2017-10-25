class TicketBoxesController < ApplicationController
  before_action :set_ticket_box, only: [:show, :edit, :update, :destroy]

  # GET /ticket_boxes
  # GET /ticket_boxes.json
  def index
    @ticket_boxes = TicketBox.all
  end

  # GET /ticket_boxes/1
  # GET /ticket_boxes/1.json
  def show
  end

  # GET /ticket_boxes/new
  def new
    @ticket_box = TicketBox.new
  end

  # GET /ticket_boxes/1/edit
  def edit
  end

  # POST /ticket_boxes
  # POST /ticket_boxes.json
  def create
    @ticket_box = TicketBox.new(ticket_box_params)

    respond_to do |format|
      if @ticket_box.save
        format.html { redirect_to @ticket_box, notice: 'Ticket box was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_box }
      else
        format.html { render :new }
        format.json { render json: @ticket_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_boxes/1
  # PATCH/PUT /ticket_boxes/1.json
  def update
    respond_to do |format|
      if @ticket_box.update(ticket_box_params)
        format.html { redirect_to @ticket_box, notice: 'Ticket box was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_box }
      else
        format.html { render :edit }
        format.json { render json: @ticket_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_boxes/1
  # DELETE /ticket_boxes/1.json
  def destroy
    @ticket_box.destroy
    respond_to do |format|
      format.html { redirect_to ticket_boxes_url, notice: 'Ticket box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_box
      @ticket_box = TicketBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_box_params
      params.require(:ticket_box).permit(:nro, :quantity, :product_id)
    end
end

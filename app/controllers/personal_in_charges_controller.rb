class PersonalInChargesController < ApplicationController
  before_action :set_personal_in_charge, only: [:show, :edit, :update, :destroy]

  # GET /personal_in_charges
  # GET /personal_in_charges.json
  def index
    @personal_in_charges = PersonalInCharge.all
  end

  # GET /personal_in_charges/1
  # GET /personal_in_charges/1.json
  def show
  end

  # GET /personal_in_charges/new
  def new
    @personal_in_charge = PersonalInCharge.new
  end

  # GET /personal_in_charges/1/edit
  def edit
  end

  # POST /personal_in_charges
  # POST /personal_in_charges.json
  def create
    @personal_in_charge = PersonalInCharge.new(personal_in_charge_params)

    respond_to do |format|
      if @personal_in_charge.save
        format.html { redirect_to @personal_in_charge, notice: 'Personal in charge was successfully created.' }
        format.json { render :show, status: :created, location: @personal_in_charge }
      else
        format.html { render :new }
        format.json { render json: @personal_in_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_in_charges/1
  # PATCH/PUT /personal_in_charges/1.json
  def update
    respond_to do |format|
      if @personal_in_charge.update(personal_in_charge_params)
        format.html { redirect_to @personal_in_charge, notice: 'Personal in charge was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_in_charge }
      else
        format.html { render :edit }
        format.json { render json: @personal_in_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_in_charges/1
  # DELETE /personal_in_charges/1.json
  def destroy
    @personal_in_charge.destroy
    respond_to do |format|
      format.html { redirect_to personal_in_charges_url, notice: 'Personal in charge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_in_charge
      @personal_in_charge = PersonalInCharge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_in_charge_params
      params.require(:personal_in_charge).permit(:name, :last_name, :ocupation)
    end
end

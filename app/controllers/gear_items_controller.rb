class GearItemsController < ApplicationController
  before_action :set_gear_item, only: %i[ show edit update destroy ]

  # GET /gear_items or /gear_items.json
  def index
    @gear_items = GearItem.all
  end

  # GET /gear_items/1 or /gear_items/1.json
  def show
  end

  # GET /gear_items/new
  def new
    @gear_item = GearItem.new
  end

  # GET /gear_items/1/edit
  def edit
  end

  # POST /gear_items or /gear_items.json
  def create
    @gear_item = GearItem.new(gear_item_params)
    @gear_item.user_id = current_user.id
    @gear_item.save

    respond_to do |format|
      if @gear_item.save
        format.html { redirect_to gear_item_url(@gear_item), notice: "Gear item was successfully created." }
        format.json { render :show, status: :created, location: @gear_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gear_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gear_items/1 or /gear_items/1.json
  def update
    respond_to do |format|
      if @gear_item.update(gear_item_params)
        format.html { redirect_to gear_item_url(@gear_item), notice: "Gear item was successfully updated." }
        format.json { render :show, status: :ok, location: @gear_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gear_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gear_items/1 or /gear_items/1.json
  def destroy
    @gear_item.destroy

    respond_to do |format|
      format.html { redirect_to gear_items_url, notice: "Gear item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gear_item
      @gear_item = GearItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gear_item_params
      params.require(:gear_item).permit(:name, :description, :is_checked_out, :user_id, :item_images)
    end
end

class PhysicalsController < ApplicationController
  before_action :set_physical, only: [:show, :edit, :update, :destroy]

  # GET /physicals
  # GET /physicals.json
  def index
    @physicals = Physical.all
    @owners = Owner.all
    @brands = Brand.all
    @conditions = Condition.all
    @formats = Format.all
  end

  # GET /physicals/1
  # GET /physicals/1.json
  def show
  end

  # GET /physicals/new
  def new
    @physical = Physical.new
    @owners = Owner.all
    @brands = Brand.all
    @conditions = Condition.all
    @formats = Format.all
  end

  # GET /physicals/1/edit
  def edit
    @owners = Owner.all
    @brands = Brand.all
    @conditions = Condition.all
    @formats = Format.all
  end

  # POST /physicals
  # POST /physicals.json
  def create
    @physical = Physical.new(physical_params)
    @owners = Owner.all
    @brands = Brand.all
    @conditions = Condition.all
    @formats = Format.all

    respond_to do |format|
      if @physical.save
        format.html { redirect_to @physical, notice: 'Physical was successfully created.' }
        format.json { render :show, status: :created, location: @physical }
      else
        format.html { render :new }
        format.json { render json: @physical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physicals/1
  # PATCH/PUT /physicals/1.json
  def update
    respond_to do |format|
      if @physical.update(physical_params)
        format.html { redirect_to @physical, notice: 'Physical was successfully updated.' }
        format.json { render :show, status: :ok, location: @physical }
      else
        format.html { render :edit }
        format.json { render json: @physical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physicals/1
  # DELETE /physicals/1.json
  def destroy
    @physical.destroy
    respond_to do |format|
      format.html { redirect_to physicals_url, notice: 'Physical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical
      @physical = Physical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physical_params
      params.require(:physical).permit(:tape, :new_box, :old_box, :title, :label_title, :label_info, :label_date, :owner_id, :master_status, :format_id, :brand_id, :condition_id, :notes, :date, :location)
    end
end

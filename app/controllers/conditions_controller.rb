class ConditionsController < ApplicationController
  before_action :set_condition, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_vip_or_admin!, except: [:show, :index]
  before_action :authenticate_admin!, only: [:destroy]

  # GET /conditions
  # GET /conditions.json
  def index
    @conditions = Condition.all
  end

  # GET /conditions/1
  # GET /conditions/1.json
  def show
  end

  # GET /conditions/new
  def new
    @condition = Condition.new
  end

  # GET /conditions/1/edit
  def edit
  end

  # POST /conditions
  # POST /conditions.json
  def create
    @condition = Condition.new(condition_params)

    respond_to do |format|
      if @condition.save
        format.html { redirect_to @condition, notice: 'Condition was successfully created.' }
        format.json { render :show, status: :created, location: @condition }
      else
        format.html { render :new }
        format.json { render json: @condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conditions/1
  # PATCH/PUT /conditions/1.json
  def update
    respond_to do |format|
      if @condition.update(condition_params)
        format.html { redirect_to @condition, notice: 'Condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @condition }
      else
        format.html { render :edit }
        format.json { render json: @condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conditions/1
  # DELETE /conditions/1.json
  def destroy
    respond_to do |format|
      if @condition.destroy
        format.html { redirect_to conditions_url, notice: 'Condition was successfully destroyed.' }
        format.json { head :no_content }
      else
        format.html { redirect_to conditions_url, alert: 'Cannot delete because some tapes use this condition.'}
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition
      @condition = Condition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condition_params
      params.require(:condition).permit(:condition, :description)
    end
end

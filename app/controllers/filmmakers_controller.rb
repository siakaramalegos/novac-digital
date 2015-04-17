class FilmmakersController < ApplicationController
  before_action :set_filmmaker, only: [:show, :edit, :update, :destroy]

  # GET /filmmakers
  # GET /filmmakers.json
  def index
    @filmmakers = Filmmaker.all
  end

  # GET /filmmakers/1
  # GET /filmmakers/1.json
  def show
  end

  # GET /filmmakers/new
  def new
    @filmmaker = Filmmaker.new
  end

  # GET /filmmakers/1/edit
  def edit
  end

  # POST /filmmakers
  # POST /filmmakers.json
  def create
    @filmmaker = Filmmaker.new(filmmaker_params)

    respond_to do |format|
      if @filmmaker.save
        format.html { redirect_to @filmmaker, notice: 'Filmmaker was successfully created.' }
        format.json { render :show, status: :created, location: @filmmaker }
      else
        format.html { render :new }
        format.json { render json: @filmmaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filmmakers/1
  # PATCH/PUT /filmmakers/1.json
  def update
    respond_to do |format|
      if @filmmaker.update(filmmaker_params)
        format.html { redirect_to @filmmaker, notice: 'Filmmaker was successfully updated.' }
        format.json { render :show, status: :ok, location: @filmmaker }
      else
        format.html { render :edit }
        format.json { render json: @filmmaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filmmakers/1
  # DELETE /filmmakers/1.json
  def destroy
    @filmmaker.destroy
    respond_to do |format|
      format.html { redirect_to filmmakers_url, notice: 'Filmmaker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filmmaker
      @filmmaker = Filmmaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filmmaker_params
      params.require(:filmmaker).permit(:name, :email, :phone)
    end
end

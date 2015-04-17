class TapeFormatsController < ApplicationController
  before_action :set_tape_format, only: [:show, :edit, :update, :destroy]

  # GET /tape_formats
  # GET /tape_formats.json
  def index
    @tape_formats = TapeFormat.all
  end

  # GET /tape_formats/1
  # GET /tape_formats/1.json
  def show
  end

  # GET /tape_formats/new
  def new
    @tape_format = TapeFormat.new
  end

  # GET /tape_formats/1/edit
  def edit
  end

  # POST /tape_formats
  # POST /tape_formats.json
  def create
    @tape_format = TapeFormat.new(tape_format_params)

    respond_to do |format|
      if @tape_format.save
        format.html { redirect_to @tape_format, notice: 'Tape format was successfully created.' }
        format.json { render :show, status: :created, location: @tape_format }
      else
        format.html { render :new }
        format.json { render json: @tape_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tape_formats/1
  # PATCH/PUT /tape_formats/1.json
  def update
    respond_to do |format|
      if @tape_format.update(tape_format_params)
        format.html { redirect_to @tape_format, notice: 'Tape format was successfully updated.' }
        format.json { render :show, status: :ok, location: @tape_format }
      else
        format.html { render :edit }
        format.json { render json: @tape_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tape_formats/1
  # DELETE /tape_formats/1.json
  def destroy
    @tape_format.destroy
    respond_to do |format|
      format.html { redirect_to tape_formats_url, notice: 'Tape format was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tape_format
      @tape_format = TapeFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tape_format_params
      params.require(:tape_format).permit(:tape_format)
    end
end

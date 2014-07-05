class MultiplechoicesController < ApplicationController
  before_action :set_multiplechoice, only: [:show, :edit, :update, :destroy]

  # GET /multiplechoices
  # GET /multiplechoices.json
  def index
    @multiplechoices = Multiplechoice.all
  end

  # GET /multiplechoices/1
  # GET /multiplechoices/1.json
  def show
  end

  # GET /multiplechoices/new
  def new
    @multiplechoice = Multiplechoice.new
  end

  # GET /multiplechoices/1/edit
  def edit
  end

  # POST /multiplechoices
  # POST /multiplechoices.json
  def create
    @multiplechoice = Multiplechoice.new(multiplechoice_params)

    respond_to do |format|
      if @multiplechoice.save
        format.html { redirect_to @multiplechoice, notice: 'Multiplechoice was successfully created.' }
        format.json { render :show, status: :created, location: @multiplechoice }
      else
        format.html { render :new }
        format.json { render json: @multiplechoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multiplechoices/1
  # PATCH/PUT /multiplechoices/1.json
  def update
    respond_to do |format|
      if @multiplechoice.update(multiplechoice_params)
        format.html { redirect_to @multiplechoice, notice: 'Multiplechoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @multiplechoice }
      else
        format.html { render :edit }
        format.json { render json: @multiplechoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multiplechoices/1
  # DELETE /multiplechoices/1.json
  def destroy
    @multiplechoice.destroy
    respond_to do |format|
      format.html { redirect_to multiplechoices_url, notice: 'Multiplechoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multiplechoice
      @multiplechoice = Multiplechoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multiplechoice_params
      params.require(:multiplechoice).permit(:choice1, :choice2, :choice3, :choice4)
    end
end

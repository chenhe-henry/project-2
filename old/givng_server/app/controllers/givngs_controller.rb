class GivngsController < ApplicationController
  before_action :set_givng, only: [:show, :edit, :update, :destroy]

  # GET /givngs
  # GET /givngs.json
  def index
    @givngs = Givng.all
  end

  # GET /givngs/1
  # GET /givngs/1.json
  def show
  end

  # GET /givngs/new
  def new
    @givng = Givng.new
  end

  # GET /givngs/1/edit
  def edit
  end

  # POST /givngs
  # POST /givngs.json
  def create
    @givng = Givng.new(givng_params)

    respond_to do |format|
      if @givng.save
        format.html { redirect_to @givng, notice: 'Givng was successfully created.' }
        format.json { render :show, status: :created, location: @givng }
      else
        format.html { render :new }
        format.json { render json: @givng.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /givngs/1
  # PATCH/PUT /givngs/1.json
  def update
    respond_to do |format|
      if @givng.update(givng_params)
        format.html { redirect_to @givng, notice: 'Givng was successfully updated.' }
        format.json { render :show, status: :ok, location: @givng }
      else
        format.html { render :edit }
        format.json { render json: @givng.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /givngs/1
  # DELETE /givngs/1.json
  def destroy
    @givng.destroy
    respond_to do |format|
      format.html { redirect_to givngs_url, notice: 'Givng was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_givng
      @givng = Givng.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def givng_params
      params.require(:givng).permit(:name, :theme, :user_id)
    end
end

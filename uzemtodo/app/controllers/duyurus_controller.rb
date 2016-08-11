class DuyurusController < ApplicationController
  before_action :set_duyuru, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session
  # GET /duyurus
  # GET /duyurus.json
  def index
    @duyurus = Duyuru.all
  end

  # GET /duyurus/1
  # GET /duyurus/1.json
  def show
  end

  # GET /duyurus/new
  def new
    @duyuru = Duyuru.new
  end

  # GET /duyurus/1/edit
  def edit
  end

  # POST /duyurus
  # POST /duyurus.json
  def create
    @duyuru = Duyuru.new(duyuru_params)

    respond_to do |format|
      if @duyuru.save
        format.html { redirect_to @duyuru, notice: 'Duyuru was successfully created.' }
        format.json { render :show, status: :created, location: @duyuru }
      else
        format.html { render :new }
        format.json { render json: @duyuru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duyurus/1
  # PATCH/PUT /duyurus/1.json
  def update
    respond_to do |format|
      if @duyuru.update(duyuru_params)
        format.html { redirect_to @duyuru, notice: 'Duyuru was successfully updated.' }
        format.json { render :show, status: :ok, location: @duyuru }
      else
        format.html { render :edit }
        format.json { render json: @duyuru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duyurus/1
  # DELETE /duyurus/1.json
  def destroy
    @duyuru.destroy
    respond_to do |format|
      format.html { redirect_to duyurus_url, notice: 'Duyuru was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duyuru
      @duyuru = Duyuru.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duyuru_params
      params.require(:duyuru).permit(:title, :content, :date)
    end
end

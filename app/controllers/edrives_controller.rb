class EdrivesController < ApplicationController
  before_action :set_edrife, only: [:show, :edit, :update, :destroy]

  # GET /edrives
  # GET /edrives.json
  def index
    @edrives = Edrive.all
  end

  # GET /edrives/1
  # GET /edrives/1.json
  def show
  end

  # GET /edrives/new
  def new
    @edrife = Edrive.new
  end

  # GET /edrives/1/edit
  def edit
  end

  # POST /edrives
  # POST /edrives.json
  def create
    @edrife = Edrive.new(edrife_params)

    respond_to do |format|
      if @edrife.save
        format.html { redirect_to @edrife, notice: 'Edrive was successfully created.' }
        format.json { render :show, status: :created, location: @edrife }
      else
        format.html { render :new }
        format.json { render json: @edrife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edrives/1
  # PATCH/PUT /edrives/1.json
  def update
    respond_to do |format|
      if @edrife.update(edrife_params)
        format.html { redirect_to @edrife, notice: 'Edrive was successfully updated.' }
        format.json { render :show, status: :ok, location: @edrife }
      else
        format.html { render :edit }
        format.json { render json: @edrife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edrives/1
  # DELETE /edrives/1.json
  def destroy
    @edrife.destroy
    respond_to do |format|
      format.html { redirect_to edrives_url, notice: 'Edrive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edrife
      @edrife = Edrive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edrife_params
      params.fetch(:edrife, {})
    end
end

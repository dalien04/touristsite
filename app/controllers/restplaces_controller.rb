class RestplacesController < ApplicationController
  before_action :set_restplace, only: [:show, :edit, :update, :destroy]

  # GET /restplaces
  # GET /restplaces.json
  def index
    @restplaces = Restplace.all
  end

  # GET /restplaces/1
  # GET /restplaces/1.json
  def show
  end

  # GET /restplaces/new
  def new
    @restplace = Restplace.new
  end

  # GET /restplaces/1/edit
  def edit
  end

  # POST /restplaces
  # POST /restplaces.json
  def create
    @restplace = Restplace.new(restplace_params)

    respond_to do |format|
      if @restplace.save
        format.html { redirect_to @restplace, notice: 'Restplace was successfully created.' }
        format.json { render :show, status: :created, location: @restplace }
      else
        format.html { render :new }
        format.json { render json: @restplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restplaces/1
  # PATCH/PUT /restplaces/1.json
  def update
    respond_to do |format|
      if @restplace.update(restplace_params)
        format.html { redirect_to @restplace, notice: 'Restplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @restplace }
      else
        format.html { render :edit }
        format.json { render json: @restplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restplaces/1
  # DELETE /restplaces/1.json
  def destroy
    @restplace.destroy
    respond_to do |format|
      format.html { redirect_to restplaces_url, notice: 'Restplace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restplace
      @restplace = Restplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restplace_params
      params.fetch(:restplace, {})
    end
end

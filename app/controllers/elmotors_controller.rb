class ElmotorsController < ApplicationController
  before_action :set_elmotor, only: [:show, :edit, :update, :destroy]

  # GET /elmotors
  # GET /elmotors.json
  def index
    @elmotors = Elmotor.all
  end

  # GET /elmotors/1
  # GET /elmotors/1.json
  def show
  end

  # GET /elmotors/new
  def new
    @elmotor = Elmotor.new
  end

  # GET /elmotors/1/edit
  def edit
  end

  # POST /elmotors
  # POST /elmotors.json
  def create
    @elmotor = Elmotor.new(elmotor_params)

    respond_to do |format|
      if @elmotor.save
        format.html { redirect_to @elmotor, notice: 'Elmotor was successfully created.' }
        format.json { render :show, status: :created, location: @elmotor }
      else
        format.html { render :new }
        format.json { render json: @elmotor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elmotors/1
  # PATCH/PUT /elmotors/1.json
  def update
    respond_to do |format|
      if @elmotor.update(elmotor_params)
        format.html { redirect_to @elmotor, notice: 'Elmotor was successfully updated.' }
        format.json { render :show, status: :ok, location: @elmotor }
      else
        format.html { render :edit }
        format.json { render json: @elmotor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elmotors/1
  # DELETE /elmotors/1.json
  def destroy
    @elmotor.destroy
    respond_to do |format|
      format.html { redirect_to elmotors_url, notice: 'Elmotor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elmotor
      @elmotor = Elmotor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elmotor_params
      params.fetch(:elmotor, {})
    end
end

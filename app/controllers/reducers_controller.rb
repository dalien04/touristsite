class ReducersController < ApplicationController
  before_action :set_reducer, only: [:show, :edit, :update, :destroy]

  # GET /reducers
  # GET /reducers.json
  def index
    @reducers = Reducer.all
  end

  # GET /reducers/1
  # GET /reducers/1.json
  def show
  end

  # GET /reducers/new
  def new
    @reducer = Reducer.new
  end

  # GET /reducers/1/edit
  def edit
  end

  # POST /reducers
  # POST /reducers.json
  def create
    @reducer = Reducer.new(reducer_params)

    respond_to do |format|
      if @reducer.save
        format.html { redirect_to @reducer, notice: 'Reducer was successfully created.' }
        format.json { render :show, status: :created, location: @reducer }
      else
        format.html { render :new }
        format.json { render json: @reducer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reducers/1
  # PATCH/PUT /reducers/1.json
  def update
    respond_to do |format|
      if @reducer.update(reducer_params)
        format.html { redirect_to @reducer, notice: 'Reducer was successfully updated.' }
        format.json { render :show, status: :ok, location: @reducer }
      else
        format.html { render :edit }
        format.json { render json: @reducer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reducers/1
  # DELETE /reducers/1.json
  def destroy
    @reducer.destroy
    respond_to do |format|
      format.html { redirect_to reducers_url, notice: 'Reducer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reducer
      @reducer = Reducer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reducer_params
       params[:reducer].permit(:model, :powers, :input_type, :output_type, :ratio, :ip, :volume)
    end
end

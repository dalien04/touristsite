class RequestsController < ApplicationController
	before_filter :find_request, only: [:edit,:update,:show, :destroy]

	def new
		@request = Request.new
	end


	def create
		@request = Request.new(request_params)
		if @request.save
			redirect_to requests_path
		else
			render :new
		end
	end


	def index
		@requests = Request.all
	end


	def edit
		
	end


	def update
		if @request.update(request_params)
			redirect_to requests_path
		else
			render :edit
		end
	end

	def show
	end

	def destroy
		if @request.destroy
			redirect_to requests_path
		else
			redirect_to requests_path, error: 'Ошибка удаления'
		end

	end


	private
	def request_params
		params[:request].permit(:open_date, :dop_info,:status,:close_date,:tourist_id,:operator_id,:tour_id)
	end

	def find_request
		@request = Request.find(params[:id])
	end






end

class QueriesController < ApplicationController

	def new
		@user_query = Query.new
	end

	def create
		puts query_params[:file].inspect
		@user_query = Query.new
	end

	def show
	end

	private
		def query_params
			params.require(:query).permit(:file, :sample_query_field)
		end

end

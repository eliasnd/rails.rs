class QueriesController < ApplicationController

	def new
		@user_query = Query.new
	end

	def create
		params = query_params

		@user_query = Query.new(Lori.handleInput(params[:file].read, params[:sample_query_field]))
	end

	def show
	end

	private
		def query_params
			params.require(:query).permit(:file, :sample_query_field)
		end

end

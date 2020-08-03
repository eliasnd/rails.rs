class QueriesController < ApplicationController

	def new
		@user_query = Query.new
	end

	def create
		puts params.inspect
		@user_query = Query.new(query_params)
		redirect_to(@user_query)
	end

	def show
	end

	private
		def query_params
			params.require(:query).permit(:file, :sample_query_field)
		end

end

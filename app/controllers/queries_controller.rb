class QueriesController < ApplicationController

	def new
		@user_query = Query.new
	end

	def create
		puts params[:query][:file].inspect
		puts Query.column_names
		output = Lori.handleInput(params[:query][:file].read, params[:query][:sample_field])

		@user_query = Query.new(params.require(:query).permit(:sample_field))
		@user_query.file.attach(params[:query][:file])
	end

	def show
	end

end

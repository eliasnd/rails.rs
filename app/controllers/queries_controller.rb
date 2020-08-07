class QueriesController < ApplicationController

	def index
		@queries = Query.all
	end

	def new
		@query = Query.new
	end

	def create
		# @query = Query.new
		# @query.sample_field = params[:query][:sample_field]
		# @query.file.attach(params[:query][:file])
		@query = current_user.queries.create(params.require(:query).permit(:file, :sample_field))

		if @query.save 
			Lori.handleInput(params[:query][:file].read, params[:query][:sample_field])
			redirect_to('/welcome')
		else
			render 'new'
		end
	end

	def show
	end

end

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
			redirect_to(user_query_path(current_user, query))
		else
			render 'new'
		end
	end

	def show
		@query = Query.find(params[:id])
		puts @query.file.download
		@output = Lori.handleInput(@query.file.download, @query.sample_field)
	end

end

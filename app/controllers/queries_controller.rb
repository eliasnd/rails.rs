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
			redirect_to(user_query_path(current_user, @query))
		else
			render 'new'
		end
	end

	def show
		@query = Query.find(params[:id])
		file_text = @query.file.open do |file| 
			next file.read
		end

		@output = Lori.handleInput(file_text, @query.sample_field)
	end

	def destroy
		@user = User.find(params[:user_id])
		@query = @user.queries.find(params[:id])
		@query.file.purge
		@query.destroy

		redirect_to(user_queries_path(current_user))
	end

end

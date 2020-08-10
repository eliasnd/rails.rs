class QueriesController < ApplicationController

	def index
		@queries = Query.all
	end

	def new
		@query = Query.new
	end

	def create

		# Edit the next line to add more fields to the form
		# Example: @query = current_user.queries.create(params.require(:query).permit(:file, :sample_field, :sample_field_2, :sample_field_3))

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

		# Edit the next line to send more fields to the rust backend
		# Example: @output = Lori.handleInput(file_text, @query.sample_field, @query.sample_field_2, @query.sample_field_3)

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

class SessionsController < ApplicationController

	skip_before_action :authorized, only: [:new, :create, :welcome]

	def new
		@failed = false
	end

	def create
		@user = User.find_by(username: params[:username])

		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to '/welcome'
		else
			@failed = true
			render 'new'
		end
	end

	def logout
		session[:user_id] = nil

		redirect_to '/login'
	end

	def login
	end

	def welcome
	end

	def page_requires_login
	end
end

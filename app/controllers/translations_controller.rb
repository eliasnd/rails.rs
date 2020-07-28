class TranslationsController < ApplicationController
	def index
		@text = params[:text] || "Lorem ipsum"
	end

	def create
		puts params[:text].inspect
		@original = params[:text]
		@translation = PigLatin.translate(params[:text])
		puts @text
		render "index"
	end
end

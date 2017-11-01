class MemesController < ApplicationController
	def index
		@memes = Meme.all
	end

	def show
    @meme = Meme.find(params[:id])
  end

	def new
	end

	def create
		@meme = Meme.new(params.require(:meme).permit(:title, :text))

  @meme.save
  redirect_to @meme
	end
end

class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(protect_params)
    if @movie.save
      redirect_to movies_url
    else
      render :new
    end
    # render text: "Saving movie..URL: #{params[:movie][:url]}, Title #{params[:movie][:title]}, Director #{params[:movie][:director]}, Released #{params[:release]}, Image URL #{params[:url]} "
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(protect_params)
      redirect_to "/movies/#{@movie.id}"
    else
      render :edit
    end
  end

  def destroy

    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_url

  end

  private
  def protect_params
    params.require(:movie).permit(:title, :director, :release, :url )
  end

end

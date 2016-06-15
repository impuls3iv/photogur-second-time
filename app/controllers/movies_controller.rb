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
    render text: "Saving movie..URL: #{params[:movie][:url]}, Title #{params[:movie][:title]}, Director #{params[:movie][:director]}, Released #{params[:release]}, Image URL #{params[:url]} "
  end

end

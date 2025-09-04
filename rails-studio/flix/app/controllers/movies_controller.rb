class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
  end
end

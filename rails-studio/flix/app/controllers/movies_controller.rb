class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
  end

  def edit
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
  end

  def update
    @movie = Movie.find(params[:id])

    # Approach 1: Whitelisted
    # movie_data = params[:movie].permit(:title, :description, :released_on, :rating, :total_gross)

    # Approach 2: Require
    # movie_data = params.require(:movie).permit(:title, :description, :released_on, :rating, :total_gross)

    # Approach 3: All allowed
    movie_data = params.require(:movie).permit!

    @movie.update(movie_data)

    redirect_to @movie
  end
end

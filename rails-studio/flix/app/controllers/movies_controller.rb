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
    # movie_data = params.require(:movie).permit!

    @movie.update(movie_params)

    redirect_to @movie
  end

  def create
    @movie = Movie.create(movie_params)

    redirect_to @movie
  end

  def new
    @movie = Movie.new
  end

  def destroy
    id = params[:id]
    @movie = Movie.find(id)
    @movie.destroy

    redirect_to movies_path, status: :see_other
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :released_on, :rating, :total_gross)
  end
end

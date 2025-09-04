class MoviesController < ApplicationController
  def index
    @movies = Movie.released
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

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render :new, status: :unprocessable_entity
    end
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
    params.require(:movie).permit(
      :title, :description, :released_on, :rating, :total_gross,
      :director, :duration, :image_file_name
    )
  end
end

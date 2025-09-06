class MoviesController < ApplicationController
  before_action :require_signin, except: [ :index, :show ]
  before_action :require_admin, except: [ :index, :show ]

  def index
    @movies = Movie.send(movies_filter)
  end

  def show
    @movie = Movie.find(params[:id])
    @fans = @movie.fans
    if current_user
      @favorite = current_user.favorites.find_by(movie_id: @movie.id)
    end
    @genres = @movie.genres.order(:name)
  end

  def edit
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie, notice: "Movie successfully updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie, notice: "Movie successfully created!"
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
    title = @movie.title

    @movie.destroy

    if title == "The Exit 8"
      redirect_to movies_path, status: :see_other, danger: "Go out from the exit 8!"
      return
    end

    redirect_to movies_path, status: :see_other, notice: "Movie successfully deleted!"
  end

  private

  def movie_params
    params.require(:movie).permit(
      :title, :description, :released_on, :rating, :total_gross,
      :director, :duration, :image_file_name, genre_ids: []
    )
  end

  def movies_filter
    if params[:filter].in? %w[upcoming recent hists flops]
      params[:filter]
    else
      :released
    end
  end
end

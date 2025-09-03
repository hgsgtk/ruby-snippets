class MoviesController < ApplicationController
  def index
    @movies = [
      '8 Exit',
      'The dark knight',
    ]
  end
end

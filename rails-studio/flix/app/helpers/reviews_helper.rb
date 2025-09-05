module ReviewsHelper
  def average_stars(movie)
    if movie.average_stars.zero?
      content_tag(:strong, "No reviews")
    else
      # pluralize(number_with_precision(movie.average_stars, precision: 1), "star")
      "*" * movie.average_stars.round
    end
  end
end

class RemoveImageFileNameFromMovies < ActiveRecord::Migration[8.0]
  def change
    remove_column :movies, :image_file_name, :string
  end
end

class MakeReviewsAJoinTable < ActiveRecord::Migration[8.0]
  def change
    remove_column :reviews, :name
    add_column :reviews, :user_id, :integer
    Review.delete_all
  end
end

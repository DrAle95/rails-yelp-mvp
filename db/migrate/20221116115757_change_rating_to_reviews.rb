class ChangeRatingToReviews < ActiveRecord::Migration[7.0]
  def change
    change_column :reviews, :rating, :integer, inclusion: { :in => 1..5 }
  end
end

class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :comment

      t.belongs_to :restaurant, foreign_key: true
      t.belongs_to :user, foreign_key: true
    end
  end
end

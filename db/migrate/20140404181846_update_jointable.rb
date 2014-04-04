class UpdateJointable < ActiveRecord::Migration
  def change
    drop_table :genres_movies

    create_table :genres_movies do |t|
      t.belongs_to :genre
      t.belongs_to :movie
    end
  end
end

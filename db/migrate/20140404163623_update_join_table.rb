class UpdateJoinTable < ActiveRecord::Migration
  def change
    rename_table(:movies_genres, :genres_movies)
  end
end

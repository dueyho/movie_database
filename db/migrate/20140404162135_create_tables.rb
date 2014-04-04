class CreateTables < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
    end

    create_table :genres do |t|
      t.string :name
    end

    create_table :movies_genres do |t|
      t.integer :genre_id
      t.integer :movie_id
    end
  end
end

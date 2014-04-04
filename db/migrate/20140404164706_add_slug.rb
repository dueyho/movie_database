class AddSlug < ActiveRecord::Migration
  def change
    add_column :movies, :slug, :string

    add_column :genres, :slug, :string
  end
end

class Movie < ActiveRecord::Base
  validates :name, :presence => true
  validates :url, :presence => true
  has_and_belongs_to_many :genres
end

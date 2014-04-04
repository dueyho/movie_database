class Movie < ActiveRecord::Base
  validates :name, :presence => true
  has_and_belongs_to_many :genres
end

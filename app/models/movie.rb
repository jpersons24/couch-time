class Movie < ApplicationRecord
  has_many :watch_lists
  has_many :users, through: :watch_lists

  validates :title, :genre, presence: true
  validates :title, uniqueness: {case_sensitive: false}
  validates :release_date, numericality: {greater_than: 1899, less_then: Time.now.year}
  validates :genre, inclusion: {in: ["Animation", "Action", "Romance", "Thriller", "Sports", "Comedy", "Fantasy", "Horror", "Drama", "Western"]}

end

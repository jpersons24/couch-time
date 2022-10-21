class Movie < ApplicationRecord
  has_many :watch_lists
  has_many :users, through: :watch_lists


  # VALIDATIONS
  # validates :attribute
  # validate :custom_method

  # when creating a movie you must have a title and genre
  validates :title, :genre, presence: true

  # movie title must be one of a kind
  validates :title, uniqueness: {case_sensitive: false}
  # release data can't be before 1900
  validates :release_date, numericality: {greater_than: 1899, less_then: Time.now.year}
  # genre must be one of these => ["Animation", "Action", "Romance", "Thriller", "Sports", "Comedy", "Fantasy",
  #                                 "Horror", "Drama", "Western"]
  validates :genre, inclusion: {in: ["Animation", "Action", "Romance", "Thriller", "Sports", "Comedy", "Fantasy", "Horror", "Drama", "Western"]}

end

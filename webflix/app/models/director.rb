class Director < ActiveRecord::Base

  has_many :movies

  # has_many :movies, class_name: 'Movie', foreign_key: 'director_id'

  # d = Director.first
  # d.movies()

  # def movies
  #   Movie.where(director_id: self.id)
  # end

end

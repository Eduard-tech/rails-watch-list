class List < ApplicationRecord
    has_many :bookmarks, dependent: :destroy
    has_many :movies, through: :bookmarks
    validates :name, presence: true, uniqueness: true

    #  def movie_title_array
    #     @movies = Movie.all
    #     MOVIES = []
    #     @movies.each do |movie|
    #         MOVIES << movie.title
    #     end
    # end
    
end

class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "Wrong" }
  validates :list_id, uniqueness: { scope: :movie_id, message: "Wrong" }
end
class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list, message: 'can only add the same movie once' }
  validates :comment, length: { minimum: 6 }
end

class Movie < ApplicationRecord
  has_many :bookmarks
  before_destroy :prevent_destroy
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  def prevent_destroy
    bookmarks.empty?
  end
end

class List < ApplicationRecord
  has_one_attached :photo
  has_many :reviews
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :delete_all
  validates :name, presence: true, uniqueness: true
end

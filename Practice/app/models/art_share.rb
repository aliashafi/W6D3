class ArtShare < ApplicationRecord
  validates :artist_id, :viewer_id, presence: true

  belongs_to :artist,
  foreign_key: :artist_id, 
  class_name: :User,
  dependent: :destroy

  belongs_to :viewer,
  foreign_key: :viewer_id, 
  class_name: :User,
  dependent: :destroy

  has_many :arts, 
  through: :artist, 
  source: :artworks

end
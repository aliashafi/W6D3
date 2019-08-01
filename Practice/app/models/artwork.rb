class Artwork < ApplicationRecord
  validates :artist_id, :title, :image_url, presence: true

  belongs_to :artist, 
  foreign_key: :artist_id, 
  class_name: :User,
  dependent: :destroy 



end
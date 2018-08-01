class Artist < ActiveRecord::Base
  #an artist has many tracks
  has_many :tracks
  has_many :albums, through: :tracks
end

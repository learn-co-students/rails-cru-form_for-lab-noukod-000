class Song < ActiveRecord::Base
  has_one :artist
  has_one :genre
end

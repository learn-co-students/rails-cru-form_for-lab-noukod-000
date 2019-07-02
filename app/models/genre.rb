class Genre < ActiveRecord::Base
  has_many :songs
  #belongs_to :artist throught: :song
end

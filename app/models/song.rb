class Song < ApplicationRecord

belongs_to :artist

  def index
    @songs = Song.all
  end

end

class SongsController < ApplicationController

  def index
    Song.all
  end

end

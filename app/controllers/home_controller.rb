class HomeController < ApplicationController

def index
		@sightings = Sighting.all
end

end


def find_likes(sighting)
  @likes = Like.all
  @likes_history = []
  @likes.each {|like| @likes_history << like.user_id if like.sighting_id==sighting.id }
  @likes_history
end

def date_format(wrong_format)
  @new_format = wrong_format.strftime("%A %d %B, %Y")
end
class Photo < ActiveRecord::Base
  @caption = Photo.find(params [ :id])
  @place_id = Paceid.new
end

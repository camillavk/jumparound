class Sighting < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "420x420>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  geocoded_by :location
  after_validation :geocode

end

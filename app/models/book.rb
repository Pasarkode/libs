class Book < ActiveRecord::Base
#  attr_accessible :image
  mount_uploader :image, ImageUploader
  
  has_many :reviews
end

class Diktinews < ActiveRecord::Base
  attr_accessible :content, :headline, :reference, :image
  mount_uploader :image, ImageUploader
end

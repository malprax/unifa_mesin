class Article < ActiveRecord::Base
  attr_accessible :author_name, :content, :name, :image
  mount_uploader :image, ImageUploader
end

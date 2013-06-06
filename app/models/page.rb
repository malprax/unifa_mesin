class Page < ActiveRecord::Base
  attr_accessible :isi, :judul, :permalink
  validates :judul,  :presence => true
  validates :isi, :presence => true,:length => { :minimum => 5 }  
  validates_uniqueness_of :permalink                     
end

class Page < ActiveRecord::Base
  attr_accessible :isi, :judul
  validates :judul,  :presence => true
  validates :isi, :presence => true,:length => { :minimum => 5 }  
  
  #validates_uniqueness_of :permalink
  
  #def to_param
  #  permalink
  #end
                    
end

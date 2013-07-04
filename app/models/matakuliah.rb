class Matakuliah < ActiveRecord::Base
  attr_accessible :kode, :mata_kuliah, :teori, :lab, :semester, :mata_kuliah_pilihan
  validates :kode,  :presence => true
  validates :mata_kuliah,  :presence => true  
  has_many :menustudies, dependent: :destroy
end


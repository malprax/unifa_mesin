class Matakuliah < ActiveRecord::Base
  attr_accessible :kode, :mata_kuliah, :teori, :lab, :semester, :mata_kuliah_pilihan
  validates :kode,  :presence => true
  validates :mata_kuliah,  :presence => true
  validates :teori,  :presence => true
  validates :lab,  :presence => true
  validates :semester,  :presence => true
  validates :mata_kuliah_pilihan, :presence => true
end

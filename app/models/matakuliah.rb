class Matakuliah < ActiveRecord::Base
  attr_accessible :kode, :mata_kuliah, :teori, :lab, :semester, :mata_kuliah_pilihan
  validates :kode,  :presence => true
  validates :mata_kuliah,  :presence => true 
  
  def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |matakuliah|
          csv << matakuliah.attributes.values_at(*column_names)
        end
      end
    end 
end


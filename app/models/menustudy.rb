class Menustudy < ActiveRecord::Base
  attr_accessible :kode_id
  belongs_to :matakuliah
end

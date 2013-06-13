class AddMataKuliahPilihanToMatakuliahs < ActiveRecord::Migration
  def change
    add_column :matakuliahs, :mata_kuliah_pilihan, :boolean
  end
end

class RemoveMataKuliahPilihanFromMatakuliahs < ActiveRecord::Migration
  def up
    remove_column :matakuliahs, :mata_kuliah_pilihan
  end

  def down
    add_column :matakuliahs, :mata_kuliah_pilihan, :boolean
  end
end

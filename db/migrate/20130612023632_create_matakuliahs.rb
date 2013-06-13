class CreateMatakuliahs < ActiveRecord::Migration
  def change
    create_table :matakuliahs do |t|
      t.string :mata_kuliah
      t.string :kode
      t.integer :teori
      t.integer :lab
      t.integer :semester
      t.boolean :mata_kuliah_pilihan, default: tidak

      t.timestamps
    end
  end
end

class CreateMenustudies < ActiveRecord::Migration
  def change
    create_table :menustudies do |t|
      t.string :kode_id
      t.string :matakuliah_id
      t.text :description
      t.text :general_goal
      t.text :specific_goal

      t.timestamps
    end
    add_index :menustudies, :kode_id
    add_index :menustudies, :matakuliah_id
  end
end

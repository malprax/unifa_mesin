class CreateMenustudies < ActiveRecord::Migration
  def change
    create_table :menustudies do |t|
      t.string :kode_id

      t.timestamps
    end
    add_index :menustudies, :kode_id
  end
end

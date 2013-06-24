class CreateInstruksionalUmums < ActiveRecord::Migration
  def change
    create_table :instruksional_umums do |t|
      t.string :kode_matakuliah_id
      t.text :deskripsi_iu
      t.text :tujuan_iu

      t.timestamps
    end
  end
end

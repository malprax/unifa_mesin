class CreateInstruksionalKhusus < ActiveRecord::Migration
  def change
    create_table :instruksional_khusus do |t|
      t.string :kode_matakuliah_id
      t.text :tujuan_ik
      t.text :pokok_bahasan
      t.text :subpokok_bahasan
      t.string :estimasi_waktu
      t.string :bahan_bacaan
      t.string :pertemuan

      t.timestamps
    end
  end
end

class CreateDaftarformulirs < ActiveRecord::Migration
  def change
    create_table :daftarformulirs do |t|
      t.string :no_pendaftaran
      t.string :nama
      t.string :alamat
      t.integer :kode_pos
      t.integer :no_hp
      t.string :tempat_lahir
      t.date :tanggal_lahir
      t.boolean :jenis_kelamin
      t.string :agama
      t.string :suku
      t.string :alamat_tinggal_sekarang
      t.string :nama_lengkap_ayah
      t.string :pekerjaan_ayah
      t.string :alamat_ayah
      t.string :nama_lengkap_ibu
      t.string :pekerjaan_ibu
      t.string :nama_slta
      t.string :kabupaten_slta
      t.string :propinsi_slta
      t.string :jurusan_slta
      t.integer :tahun_masuk_slta
      t.integer :tahun_lulus_slta
      t.integer :total_nilai_ujian_nasional
      t.integer :jumlah_mata_pelajaran_ujian_nasional

      t.timestamps
    end
  end
end

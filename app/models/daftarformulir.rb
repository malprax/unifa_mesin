class Daftarformulir < ActiveRecord::Base
  attr_accessible :agama, :alamat, :alamat_ayah, :alamat_tinggal_sekarang, :jenis_kelamin, :jumlah_mata_pelajaran_ujian_nasional, :jurusan_slta, :kabupaten_slta, :kode_pos, :nama, :nama_lengkap_ayah, :nama_lengkap_ibu, :nama_slta, :no_hp, :no_pendaftaran, :pekerjaan_ayah, :pekerjaan_ibu, :propinsi_slta, :suku, :tahun_lulus_slta, :tahun_masuk_slta, :tanggal_lahir, :tempat_lahir, :total_nilai_ujian_nasional
end

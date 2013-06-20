class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nama, :string
    add_column :users, :nim, :string
    add_column :users, :tempat_lahir, :string
    add_column :users, :tanggal_lahir, :date
    add_column :users, :jenis_kelamin, :string
    add_column :users, :jumlah_bersaudara, :string
    add_column :users, :status_pernikahan, :string
    add_column :users, :agama, :string
    add_column :users, :warga_negara, :string
    add_column :users, :suku, :string
    add_column :users, :alamat, :string
    add_column :users, :telepon_rumah, :string
    add_column :users, :telepon_seluler, :string
    add_column :users, :kota, :string
    add_column :users, :provinsi, :string
    add_column :users, :nama_ayah, :string
    add_column :users, :nama_ibu, :string
    add_column :users, :pendidikan_ayah, :string
    add_column :users, :pendidikan_ibu, :string
    add_column :users, :pekerjaan_ayah, :string
    add_column :users, :pekerjaan_ibu, :string
    add_column :users, :alamat_orang_tua, :string
    add_column :users, :kota_orang_tua, :string
    add_column :users, :provinsi_orang_tua, :string
    add_column :users, :telepon_rumah_orang_tua, :string
    add_column :users, :telepon_seluler_orang_tua, :string
    add_column :users, :penghasilan_orang_tua, :string 
    add_column :users, :sekolah_menengah_atas, :string
    add_column :users, :tahun_lulus_sma, :string
    add_column :users, :jurusan, :string
    add_column :users, :sekolah_menengah_pertama, :string
    add_column :users, :tahun_lulus_smp, :string
    add_column :users, :sekolah_dasar, :string
    add_column :users, :tahun_lulus_sd, :string
    add_column :users, :taman_kanak_kanak, :string
    add_column :users, :tahun_lulus_taman_kanak_kanak, :string   
    
  end
end

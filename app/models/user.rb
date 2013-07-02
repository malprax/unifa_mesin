class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable and :registerable
  devise :database_authenticatable,:recoverable, :rememberable, :trackable, :validatable, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :role_id,
  :nama, 
  :nama_panggilan, 
  :nim, 
  :tempat_lahir, 
  :tanggal_lahir, 
  :jenis_kelamin, 
  :jumlah_bersaudara, 
  :status_pernikahan, 
  :warga_negara, 
  :suku,  
  :alamat, 
  :telepon_rumah,
  :telepon_seluler, 
  :kota, 
  :nama_ayah,
  :nama_ibu, 
  :pendidikan_ayah, 
  :pendidikan_ibu, 
  :pekerjaan_ayah, 
  :pekerjaan_ibu, 
  :alamat_orang_tua, 
  :kota_orang_tua,
  :provinsi_orang_tua,
  :telepon_rumah_orang_tua, 
  :telepon_seluler_orang_tua, 
  :penghasilan_orang_tua,
  :sekolah_menengah_atas, 
  :tahun_lulus_sma,
  :sekolah_menengah_pertama, 
  :tahun_lulus_smp,
  :sekolah_dasar, 
  :tahun_lulus_sd, 
  :taman_kanak_kanak, 
  :tahun_lulus_taman_kanak_kanak
  # attr_accessible :title, :body
  
  validates_presence_of :username
  belongs_to :role
  
  #----------------------------------------------------------
  #syarat mengisi krs:
  
  def checkbiodata
    if (nama&&suku&&nama_panggilan&&nim&&tempat_lahir&&tanggal_lahir&&jenis_kelamin&&jumlah_bersaudara&&status_pernikahan&&warga_negara&&alamat&&telepon_rumah&&telepon_seluler&&kota&&nama_ayah&&nama_ibu&&pendidikan_ayah&&pendidikan_ibu&&pekerjaan_ayah&&pekerjaan_ibu&&alamat_orang_tua&&kota_orang_tua&&provinsi_orang_tua&&telepon_rumah_orang_tua&&telepon_seluler_orang_tua&&penghasilan_orang_tua&&sekolah_menengah_atas&&tahun_lulus_sma&&sekolah_menengah_pertama&&tahun_lulus_smp&&sekolah_dasar&&tahun_lulus_sd&&taman_kanak_kanak&&tahun_lulus_taman_kanak_kanak).blank?
      return true
    else
      return false
    end
  end
end

# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130629232153) do

  create_table "artikels", :force => true do |t|
    t.string   "nama"
    t.text     "isi"
    t.string   "penulis"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "instruksional_khusus", :force => true do |t|
    t.string   "kode_matakuliah_id"
    t.text     "tujuan_ik"
    t.text     "pokok_bahasan"
    t.text     "subpokok_bahasan"
    t.string   "estimasi_waktu"
    t.string   "bahan_bacaan"
    t.string   "pertemuan"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "instruksional_umums", :force => true do |t|
    t.string   "kode_matakuliah_id"
    t.text     "deskripsi_iu"
    t.text     "tujuan_iu"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "matakuliahs", :force => true do |t|
    t.string   "mata_kuliah"
    t.string   "kode"
    t.integer  "teori"
    t.integer  "lab"
    t.integer  "semester"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.boolean  "mata_kuliah_pilihan"
  end

  create_table "pages", :force => true do |t|
    t.string   "judul"
    t.text     "isi"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "permalink"
  end

  add_index "pages", ["permalink"], :name => "index_pages_on_permalink"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                         :default => "", :null => false
    t.string   "encrypted_password",            :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                 :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "username"
    t.string   "nama"
    t.string   "nama_panggilan"
    t.string   "nim"
    t.string   "tempat_lahir"
    t.date     "tanggal_lahir"
    t.string   "jenis_kelamin"
    t.string   "jumlah_bersaudara"
    t.string   "status_pernikahan"
    t.string   "agama"
    t.string   "warga_negara"
    t.string   "suku"
    t.string   "alamat"
    t.string   "telepon_rumah"
    t.string   "telepon_seluler"
    t.string   "kota"
    t.string   "provinsi"
    t.string   "nama_ayah"
    t.string   "nama_ibu"
    t.string   "pendidikan_ayah"
    t.string   "pendidikan_ibu"
    t.string   "pekerjaan_ayah"
    t.string   "pekerjaan_ibu"
    t.string   "alamat_orang_tua"
    t.string   "kota_orang_tua"
    t.string   "provinsi_orang_tua"
    t.string   "telepon_rumah_orang_tua"
    t.string   "telepon_seluler_orang_tua"
    t.string   "penghasilan_orang_tua"
    t.string   "sekolah_menengah_atas"
    t.string   "tahun_lulus_sma"
    t.string   "jurusan"
    t.string   "sekolah_menengah_pertama"
    t.string   "tahun_lulus_smp"
    t.string   "sekolah_dasar"
    t.string   "tahun_lulus_sd"
    t.string   "taman_kanak_kanak"
    t.string   "tahun_lulus_taman_kanak_kanak"
    t.integer  "role_id",                       :default => 2,  :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :judul
      t.text :isi

      t.timestamps
    end
  end
end

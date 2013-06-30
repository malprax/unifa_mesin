class CreateArtikels < ActiveRecord::Migration
  def change
    create_table :artikels do |t|
      t.string :nama
      t.text :isi
      t.string :penulis

      t.timestamps
    end
  end
end

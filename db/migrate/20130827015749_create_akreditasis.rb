class CreateAkreditasis < ActiveRecord::Migration
  def change
    create_table :akreditasis do |t|
      t.string :name

      t.timestamps
    end
  end
end

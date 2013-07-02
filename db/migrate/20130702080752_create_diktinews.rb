class CreateDiktinews < ActiveRecord::Migration
  def change
    create_table :diktinews do |t|
      t.string :headline
      t.text :content
      t.string :reference
      t.string :image

      t.timestamps
    end
  end
end

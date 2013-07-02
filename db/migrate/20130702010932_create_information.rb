class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :info_name
      t.text :content
      t.string :author_info

      t.timestamps
    end
  end
end

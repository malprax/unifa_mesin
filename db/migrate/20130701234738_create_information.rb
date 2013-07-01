class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :headline
      t.text :content
      t.string :author_name

      t.timestamps
    end
  end
end

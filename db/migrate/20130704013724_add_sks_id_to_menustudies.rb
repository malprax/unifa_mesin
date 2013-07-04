class AddSksIdToMenustudies < ActiveRecord::Migration
  def change
    add_column :menustudies, :sks_id, :integer
  end
end

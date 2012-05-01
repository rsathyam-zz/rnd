class FeaturePicturePaperclip < ActiveRecord::Migration
  def up
    remove_column :features, :leader_picture
    
    change_table :features do |t|
      t.has_attached_file :leader_picture
    end
  end

  def down
    drop_attached_file :features, :leader_picture
    add_column :features, :leader_picture
  end
end

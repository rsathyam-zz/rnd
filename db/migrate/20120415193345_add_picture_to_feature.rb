class AddPictureToFeature < ActiveRecord::Migration
  def change
    add_column :features, :leader_picture, :string
  end
end

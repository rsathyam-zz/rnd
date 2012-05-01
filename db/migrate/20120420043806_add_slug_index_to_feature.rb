class AddSlugIndexToFeature < ActiveRecord::Migration
  def change
    add_index :features, :slug
  end
end

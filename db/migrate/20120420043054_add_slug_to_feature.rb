class AddSlugToFeature < ActiveRecord::Migration
  def change
    add_column :features, :slug, :string
  end
end

class AddFeatureModel < ActiveRecord::Migration
  def up
    create_table :features do |f|
      f.column :title, :string
      f.column :content_date, :datetime
      f.column :overview, :text
      f.column :body, :text
      f.column :type, :string
      f.timestamps
    end
  end

  def down
    drop_table :features
  end
end

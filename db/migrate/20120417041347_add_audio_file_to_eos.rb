class AddAudioFileToEos < ActiveRecord::Migration
  def change
    add_column :features, :audio_file, :string
    add_column :features, :audio_mime, :string
    add_column :features, :audio_bytes, :integer
    add_column :features, :audio_seconds, :integer
    add_column :features, :feature_keywords, :string
  end
end

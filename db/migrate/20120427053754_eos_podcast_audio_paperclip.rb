class EosPodcastAudioPaperclip < ActiveRecord::Migration
  def up
    change_table :features do |t|
      t.has_attached_file :podcast
    end
  end

  def down
    drop_attached_file :features, :podcast
  end
end

class CreateLooperLoops < ActiveRecord::Migration[5.2]
  def change
    create_table :looper_loops do |t|
      t.string :loop_category
      t.string :loop_genre
      t.string :loop_comments_count
      t.string :loop_description
      t.string :loop_detail_link
      t.integer :loop_downloads
      t.string :loop_duration
      t.string :loop_mp3_path
      t.string :loop_mp3_path_absolute
      t.string :loop_name
      t.string :loop_tags_str_csv
      t.string :loop_username

      t.timestamps
    end
  end
end

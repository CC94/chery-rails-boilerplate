class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :song_count
      t.date :date_of_published
      t.string :type
      t.string :genre
      t.timestamps
    end
  end
end

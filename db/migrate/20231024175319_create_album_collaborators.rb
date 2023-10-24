class CreateAlbumCollaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :album_collaborators do |t|
      t.belongs_to :songs, foreign_key: true
      t.belongs_to :albums, foreign_key: true
      t.timestamps
    end
  end
end

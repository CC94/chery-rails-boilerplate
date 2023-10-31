# frozen_string_literal: true

class AddSingerToSong < ActiveRecord::Migration[7.0]
  def change
    add_column :collaborators, :ref_song_id, :integer
    add_column :collaborators, :collaborator_id, :integer
    add_foreign_key :album_collaborators, :songs, column: :ref_song_id
    add_foreign_key :album_collaborators, :albums, column: :ref_album_id
    add_foreign_key :collaborators, :songs, column: :ref_song_id
    add_foreign_key :collaborators, :creatives, column: :ref_creative_id
    add_foreign_key :albums, :publishers, column: :ref_publisher_id
  end
end

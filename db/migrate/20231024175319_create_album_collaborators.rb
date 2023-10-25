class CreateAlbumCollaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :album_collaborators, &:timestamps
  end
end

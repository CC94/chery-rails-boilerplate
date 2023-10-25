# frozen_string_literal: true

class AlbumCollaborator < ApplicationRecord
  belongs_to :songs
  belongs_to :albums
end

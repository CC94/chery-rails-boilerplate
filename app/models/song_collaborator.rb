# frozen_string_literal: true

class SongCollaborator < ApplicationRecord
  belongs_to :songs
  belongs_to :collaborator, polymorphic: true
end

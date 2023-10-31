# frozen_string_literal: true

class Publisher < ApplicationRecord
  has_many :albums, dependent: destroy
  has_many :song_collaborators, dependent: destroy, as: :collaborator
end

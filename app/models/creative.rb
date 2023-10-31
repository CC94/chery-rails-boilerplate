# frozen_string_literal: true

class Creative < ApplicationRecord
  has_many :song_collaborators, dependent: destroy, as: :collaborator
end

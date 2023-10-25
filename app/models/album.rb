# frozen_string_literal: true

class Album < ApplicationRecord
  has_many :album_collaborators, dependent: destroy
  belongs_to :publishers
end

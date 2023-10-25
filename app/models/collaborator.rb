# frozen_string_literal: true

class Collaborator < ApplicationRecord
  belongs_to :songs
  belongs_to :creatives
end

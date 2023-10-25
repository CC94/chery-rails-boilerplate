# frozen_string_literal: true

class Song < ApplicationRecord
  has_many :collaborators, dependent: destroy
end

# frozen_string_literal: true

class Creative < ApplicationRecord
  has_many :collaborators, dependent: destroy
end

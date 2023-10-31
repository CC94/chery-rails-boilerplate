# frozen_string_literal: true

class Song < ApplicationRecord
  has_many :song_collaborators, dependent: destroy
  validates :name, presence: true
  validates :duration, presence: true
  validates_comparison_of :first_published_date, lesser_than: -> { Time.zone.today }
end

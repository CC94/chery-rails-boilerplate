# frozen_string_literal: true

class Album < ApplicationRecord
  has_many :album_collaborators, dependent: destroy
  validates :name, presence: true
  validates :type, presence: true
  validates_comparison_of :song_count, greater_than: -> { 0 }
  validates_comparison_of :date_of_published, lesser_than: -> { Time.zone.today }
end

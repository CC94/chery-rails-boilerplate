# frozen_string_literal: true
class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :genre
      t.string :language
      t.string :tag
      t.interval :duration
      t.date :first_published_date
      t.has_many :collaborators, foreign_key: true

      t.timestamps
    end
  end
end

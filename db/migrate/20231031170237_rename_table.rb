# frozen_string_literal: true

class RenameTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :collaborators, :song_collaborators
  end
end

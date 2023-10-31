# frozen_string_literal: true

class AddPolymorphicJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :collaborators do |t|
      t.belongs_to :songs, null: false, foreign_key: true
      t.references :collaborator, polymorphic: true, null: false

      t.timestamps
    end
  end
end

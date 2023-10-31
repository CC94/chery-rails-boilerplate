# frozen_string_literal: true

class DropColumnTable < ActiveRecord::Migration[7.0]
  def up
    remove_column :albums, :ref_publisher_id
    drop_table :collaborators
  end

  def down
    add_column :albums, :ref_publisher_id, :integer
    create_table :collaborators do |t|
      t.string :role
      t.timestamps
    end
  end
end

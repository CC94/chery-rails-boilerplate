class CreateCollaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :collaborators do |t|
      t.string :role
      t.belongs_to :songs, foreign_key: true
      t.belongs_to :creatives, foreign_key: true
      t.belongs_to :publishers, foreign_key: true
      t.timestamps
    end
  end
end

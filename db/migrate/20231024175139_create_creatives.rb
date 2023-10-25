class CreateCreatives < ActiveRecord::Migration[7.0]
  def change
    create_table :creatives do |t|
      t.string :name
      t.string :gender
      t.string :nationality
      t.timestamps
    end
  end
end

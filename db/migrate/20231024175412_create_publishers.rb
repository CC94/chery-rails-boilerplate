class CreatePublishers < ActiveRecord::Migration[7.0]
  def change
    create_table :publishers do |t|
      t.string :name
      t.date :first_established_date
      t.string :uen
      t.string :country_established_in
      t.has_many :songs
      t.has_many :albums
      t.timestamps
    end
  end
end

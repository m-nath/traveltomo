class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.date :date
      t.text :location
      t.float :latitude
      t.float :longitude
      t.references :month, foreign_key: true
      t.references :prefectures, foreign_key: true
      t.string :genre

      t.timestamps
    end
  end
end

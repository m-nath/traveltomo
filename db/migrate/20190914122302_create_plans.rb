class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :month, foreign_key: true
      t.integer :num_days

      t.timestamps
    end
  end
end

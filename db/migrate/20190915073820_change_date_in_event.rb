class ChangeDateInEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :date, :date
    add_column :events, :date, :string
  end
end

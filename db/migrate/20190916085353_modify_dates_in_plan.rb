class ModifyDatesInPlan < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :num_days, :integer
    add_column :plans, :date, :string
  end
end

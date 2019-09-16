class RemoveMonthFromPlan < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :month_id, :references
  end
end

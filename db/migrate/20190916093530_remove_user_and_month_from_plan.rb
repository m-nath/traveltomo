class RemoveUserAndMonthFromPlan < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :user_id, :references
  end
end

class RemoveMonthAndPrefectureFromEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :prefectures_id, :references
    remove_column :events, :month_id, :references
  end
end

class AddGalleryAndAccessToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :gallery1, :string
    add_column :events, :gallery2, :string
    add_column :events, :gallery3, :string
    add_column :events, :access, :text
  end
end

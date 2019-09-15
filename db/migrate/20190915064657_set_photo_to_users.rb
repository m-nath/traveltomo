class SetPhotoToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :photo, :string
    add_column :users, :photo, :string, default: 'https://res.cloudinary.com/dxouryvao/image/upload/v1568532657/traveltomo-logo_r1gjwh.png'
  end
end

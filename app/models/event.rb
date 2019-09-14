class Event < ApplicationRecord
  belongs_to :month
  belongs_to :prefectures

  has_many :reviews, dependent: :destroy
  has_many :interests_users, :through => :interests, :source => :user

  validates :name, presence: true, uniqueness: true
  validates :date, presence: true
  validates :location, presence: true
  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?
  # mount_uploader :photo, PhotoUploader
end

class Event < ApplicationRecord

  belongs_to :month
  belongs_to :prefectures

  has_many :reviews, dependent: :destroy
  has_many :interests_users, :through => :interests, :source => :user

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :location, :date, :genre ],
  associated_against: {
    month: [ :name ],
    prefectures: [ :name]
  },
  using: {
    tsearch: { prefix: true }
  }
  validates :name, presence: true, uniqueness: true
  validates :date, presence: true
  validates :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  mount_uploader :photo, PhotoUploader

  acts_as_taggable_on :tags
end

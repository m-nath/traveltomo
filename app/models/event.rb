class Event < ApplicationRecord

  has_many :reviews, dependent: :destroy
  has_many :pictures, dependent: :destroy
  has_many :interests_users, :through => :interests, :source => :user

  belongs_to :user

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :location, :date, :genre],
  associated_against: {
    tags: [ :name ]
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
  mount_uploader :gallery1, PhotoUploader
  mount_uploader :gallery2, PhotoUploader
  mount_uploader :gallery3, PhotoUploader

  acts_as_taggable_on :tags
end

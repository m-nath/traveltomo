class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :interests
  has_many :interested_events, :through => :interests, :source => :event

  has_many :reviews, dependent: :destroy
  has_many :plans
  # has_many :planned_events, :through => :plans,
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  mount_uploader :photo, PhotoUploader
end

class Plan < ApplicationRecord

  has_many :event_plans, dependent: :destroy
  has_many :events, through: :event_plans

  validates :name, presence: true
  validates :date, presence: true
end

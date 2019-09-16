class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :month

  has_many :events, through: :event_plans
end

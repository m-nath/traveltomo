class EventPlan < ApplicationRecord
  belongs_to :event
  belongs_to :plan
end

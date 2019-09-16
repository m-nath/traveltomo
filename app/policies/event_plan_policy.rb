class EventPlanPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    if record.plan.user_id == user
      true
    end
  end

  def destroy?
    create?
  end
end

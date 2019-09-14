class EventPlanPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      record.plan.user == user
    end

    def destroy?
      create?
    end
  end
end

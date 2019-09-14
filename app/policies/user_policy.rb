class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def edit?
      record == user
    end

    def update
      edit?
    end
  end
end

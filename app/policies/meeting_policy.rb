class MeetingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.includes(:meeting_id)
    end
  end

  def show?
    true
  end

end

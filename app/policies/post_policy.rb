class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if user.present?
        scope.where(user_id: user.id)
      else
        # scope.none
        []
      end
    end
  end
  
  def owned_by_user?
    record.user_id == user.id
  end
end

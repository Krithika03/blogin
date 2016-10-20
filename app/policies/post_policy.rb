class PostPolicy < ApplicationPolicy

   def create?
    user.has_role? :admin or user.has_role? :author
   end

  class Scope < Scope
    def resolve
      scope
    end

  end
end

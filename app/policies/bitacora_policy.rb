

class BitacoraPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
        scope.all
    end
  end

  def index?
      user.admin? || user.alumno? || user.profesor?
  end

  def show?
    user.admin? || user.alumno? || user.profesor?
  end

  def create?
      user.admin? || user.alumno?
  end

  def update?
    user.admin? || user.profesor?
  end

  def destroy?
    user.admin?
  end
end

class JobPolicy < ApplicationPolicy

  def index?
    user.present? && record.first.user == user
  end

  def show?
    scope.where(:id => record.id).exists?
    user.present? && user == record.user
  end

  def create?
    user.present?
  end

  def new?
    create?
  end

  def update?
    user.present? && user == record.user
  end

  def edit?
    update?
  end

  def destroy?
    user.present? && user == record.user
  end

end
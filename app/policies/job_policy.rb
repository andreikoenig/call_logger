class JobPolicy < ApplicationPolicy

  def index?
    user.present? && no_records?
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

  private
    def no_records?
      if record.length == 0
        return true
      else
        record.first.user == user
      end
    end

end
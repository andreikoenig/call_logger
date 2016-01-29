class CallEntryPolicy < ApplicationPolicy

  def new?
    create?
  end

  def create?
    user.present? && user == record.job.user
  end

  def edit?
    update?
  end

  def update?
    user.present? && user == record.job.user
  end

  def destroy?
    user.present? && user == record.job.user
  end

end
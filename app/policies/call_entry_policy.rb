class CallEntryPolicy < ApplicationPolicy

  def new?
    create?
  end

  def create?
    user.present? && user == record.job.user
  end

end
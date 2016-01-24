class PaymentPolicy < ApplicationPolicy

  def index?
    user.present? && no_records?
  end

  def new?
    create?
  end

  def create?
    user.present?
  end

  private
  def no_records?
    if record.length == 0
      return true
    else
      record.first.job.user == user
    end
  end
end
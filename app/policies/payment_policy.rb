class PaymentPolicy < ApplicationPolicy

  def index?
    user.present? && record.first.job.user == user
  end

  def new?
    create?
  end

  def create?
    user.present?
  end
end
class ItemPolicy < ApplicationPolicy
  def new?
    user.admin?
  end
end

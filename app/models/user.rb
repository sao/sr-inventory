class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable

  has_many :item_entries

  def full_name
    "#{first_name} #{last_name}"
  end
end

class ItemEntry < ActiveRecord::Base
  belongs_to :user
  has_one :item
end
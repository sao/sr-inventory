class Item < ActiveRecord::Base
  validates_presence_of :number, :vendor, :description
  has_many :item_entries
end

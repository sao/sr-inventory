class Item < ActiveRecord::Base
  validates_presence_of :number, :vendor, :description
  has_many :item_entries

  def self.units_of_measurement
    %w(measurement1 measurement2)
  end
end

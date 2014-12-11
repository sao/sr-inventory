class ItemEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  validates_presence_of :item

  def date
    return if self['date'].nil?
    self['date'].strftime('%m/%d/%Y')
  end

  def date=(value)
    return if self['date'].nil?
    self['date'] = Time.strptime(value, '%m/%d/%Y')
  end

  def self.adjustment_types
    %w(add delete)
  end
end

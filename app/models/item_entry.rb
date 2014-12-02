class ItemEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  def date
    self['date'].strftime('%m/%d/%Y')
  end

  def date=(value)
    self['date'] = Time.strptime(value, '%m/%d/%Y')
  end

  def self.adjustment_types
    %w(add delete)
  end
end

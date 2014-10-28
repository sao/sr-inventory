require 'spec_helper'

describe Item do
  it { should validate_presence_of :number }
  it { should validate_presence_of :vendor }
  it { should validate_presence_of :description }
  it { should have_many :item_entries }
end

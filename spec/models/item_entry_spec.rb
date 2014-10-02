require 'spec_helper'

describe ItemEntry do
  it { should belong_to :user }
  it { should have_one :item }
end

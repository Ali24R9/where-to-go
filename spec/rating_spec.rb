require 'spec_helper'

describe Rating do
  it { should belong_to :category }
  it { should belong_to :city }
  it { should have_many :recommendations}
end

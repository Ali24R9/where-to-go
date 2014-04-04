require 'spec_helper'

describe City do
  it { should have_many(:categories).through(:ratings) }
end

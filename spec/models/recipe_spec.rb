require 'rails_helper'

describe Recipe do
  it { should have_many(:ingredients) }
  it { should belong_to(:author) }
  it { should have_and_belong_to_many(:tags) }
end

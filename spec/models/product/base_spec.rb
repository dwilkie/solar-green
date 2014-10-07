require 'rails_helper'

describe Product::Base do
  it { should ensure_length_of(:name).is_at_most(255)}
  it { should ensure_length_of(:type).is_at_most(255)}
end

require 'spec_helper'
require 'plant'

describe Plant do
  subject(:plant) { Plant.new }

  it_behaves_like 'the brainless'
end

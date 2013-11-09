require 'spec_helper'
require 'zombie'

describe Zombie do

  context "eating brains" do
    subject(:zombie) { Zombie.new }
    it {
      expect { zombie.eat_brains }.to change { zombie.iq }.by(3)
    }
  end

  context "low iq zombie" do
    subject(:zombie) { Zombie.new }

    it {
      expect { zombie.make_decision! }.to raise_error(
        Zombie::NotSmartEnoughError
      )
    }

    it { should_not be_genius }
    its(:iq) { should == 0 }
  end

  context "high iq zombie" do
    subject { Zombie.new(iq: 3) }

    it { should be_genius }
    its(:brains_eaten_count) { should == 1 }
  end
end

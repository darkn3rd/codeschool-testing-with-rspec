require 'spec_helper'
require 'zombie'

describe Zombie do
  it 'includes a tweet' do
    tweet = Tweet.new
    zombie = Zombie.new(tweets: [tweet])
    zombie.tweets.should include(tweet)
  end

  it 'gains 3 IQ points by eating brains' do
    zombie = Zombie.new
    expect { zombie.eat_brains }.to change { zombie.iq }.by(3)
  end

  it 'increases the number of tweets' do
    zombie = Zombie.new(name: 'Ash')
    zombie.tweets << Tweet.new(message: "Arrrgggggggghhhhh")
    zombie.should have(1).tweets
  end

  it 'raises a Zombie::NotSmartEnoughError if not able to make a decision' do
    zombie = Zombie.new
    expect { zombie.make_decision! }.to raise_error(
      Zombie::NotSmartEnoughError
    )
  end
end

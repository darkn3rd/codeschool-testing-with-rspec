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
end

require 'spec_helper'
require 'tweet'

describe Tweet do
  it 'can set status' do
    tweet = Tweet.new(status: 'Nom nom nom')
    tweet.status.should == 'Nom nom nom'
  end

  it 'without a leading @ symbol should be public' do
    tweet = Tweet.new(status: 'Nom nom nom')
    tweet.should be_public
  end

  it 'truncates the status to 140 characters' do
    tweet = Tweet.new(status: 'Nom nom nom' * 100)
    tweet.status.length.should be <= 140
  end
end

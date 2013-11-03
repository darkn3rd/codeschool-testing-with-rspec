class Zombie
  attr_accessor :tweets

  def initialize(options = {})
    @tweets = options[:tweets]
  end
end

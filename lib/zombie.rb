class Zombie
  attr_accessor :tweets, :iq

  def initialize(options = {})
    @tweets = options[:tweets]
    @iq = 0
  end

  def eat_brains
    @iq += 3
  end
end

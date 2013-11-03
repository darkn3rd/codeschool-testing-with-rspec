class Zombie
  attr_accessor :tweets, :iq

  def initialize(options = {})
    @name = options[:name]
    @tweets = options[:tweets] || []
    @iq = options[:iq] || 0
  end

  def eat_brains
    @iq += 3
  end
end

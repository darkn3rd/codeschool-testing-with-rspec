class Zombie
  attr_accessor :iq

  class NotSmartEnoughError < StandardError; end

  def initialize(options = {})
    @name = options[:name]
    @iq = options[:iq] || 0
  end

  def eat_brains
    @iq += 3
  end

  def genius?
    iq >= 3
  end

  def make_decision!
    raise NotSmartEnoughError unless genius?
    return true
  end

  def brains_eaten_count
    iq / 3
  end
end

class Tweet
  attr_accessor :status, :message

  def initialize(options={})
    self.status = options[:status]
    @message = options[:message]
  end

  def public?
    self.status && self.status[0] != "@"
  end

  def status=(status)
    @status = status ? status[0...140] : status
  end
end

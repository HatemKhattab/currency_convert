class Money

  attr_accessor :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency 
  end

  def inspect
   amount_f = "%0.2f" % @amount
   return "#{amount_f} #{currency}"
  end

  def self.conversion_rates(from,hash={})
  end

end
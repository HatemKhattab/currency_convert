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

# Configure the currency rates with respect to a base currency (here EUR):
 
# Money.conversion_rates('EUR', {
#   'USD'     => 1.11,
#   'Bitcoin' => 0.0047
# })
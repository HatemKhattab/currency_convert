class Money

  attr_accessor :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency 
  end

  def inspect
   amount_f = "%0.2f" % @amount
   "#{amount_f} #{currency}"
  end

  def self.conversion_rates(from,rates={})
    @@origin_currency = from
    @@rates = rates
  end

  def convert_to(to)
    if to == @@origin_currency
      rate = @@rates[currency.to_sym]
      result = amount/rate
    else
      rate = @@rates[to.to_sym]
      result = amount * rate
    end
    Money.new(result, to)
  end

end
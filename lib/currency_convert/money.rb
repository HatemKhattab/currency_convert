class Money
  
  include Comparable
  attr_reader :amount, :currency

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

  def + another_money
    another_money_amount = another_money.convert_to(currency).amount
    Money.new(amount+another_money_amount, currency)
  end

  def - another_money
    another_money_amount = another_money.convert_to(currency).amount
    Money.new(amount-another_money_amount, currency)
  end

  def / num
    Money.new(amount/num, currency)
  end

  def * num
    Money.new(amount*num, currency)
  end

  def <=> another_money
    case (currency == another_money.currency)
      when true
        amount <=> another_money.amount
      when false
        money_1 = currency==@@origin_currency ? self.convert_to(another_money.currency).amount : amount 
        money_2 = another_money.currency==@@origin_currency ? another_money.convert_to(currency).amount : another_money.amount
        money_1 <=> money_2
    end
  end

end
require "spec_helper"

describe CurrencyConvert do

  before{
    Money.conversion_rates('EUR', {
    'USD'     => 1.11,
    'Bitcoin' => 0.0047
    })

    fify_eur = Money.new(50, 'EUR')
  }


  it "can create a new money" do
    # fifty_eur = Money.new(50, 'EUR')
    # expect(fifty_eur).to_not be_nil
  end

  it "can get amount, currency and inspect" do
  	expect(fifty_euro.amount).to eq(50)
  	expect(fifty_euro.currency).to eq('EUR')
  	expect(fifty_euro.inspect).to eq('50.00 EUR')
  end

  it "can configure the money" do
  
    # fifty_euros = Money.new(50, 'EUR')
    #expect(Money.from).to eq('EUR')
  end
end


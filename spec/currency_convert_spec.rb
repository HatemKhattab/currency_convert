require "spec_helper"

describe CurrencyConvert do
  it "has a version number" do
    expect(CurrencyConvert::VERSION).not_to be nil
  end

  it "can create a new money" do
    fifty_euros = Money.new(50, 'EUR')
    expect(fifty_euros).to_not be_nil
  end

  it "can get amount, currency and inspect" do
  	fifty_euros = Money.new(50, 'EUR')
  	expect(fifty_euros.amount).to eq(50)
  	expect(fifty_euros.currency).to eq('EUR')
  	expect(fifty_euros.inspect).to eq('50.00 EUR')
  end
end

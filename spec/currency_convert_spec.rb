require "spec_helper"

describe CurrencyConvert do

  Money.conversion_rates('EUR', {USD: 1.11})
  fifty_eur = Money.new(50, 'EUR')
  twenty_dollar = Money.new(20, 'USD')

  it "can create a new money" do
    expect(fifty_eur).to_not be_nil
  end

  it "can get moneys amount, currency and inspect" do
    expect(fifty_eur.amount).to eq(50)
    expect(fifty_eur.currency).to eq('EUR')
    expect(fifty_eur.inspect).to eq('50.00 EUR')
  end

  it "convert to another money" do
    fifty_eur_in_usd = fifty_eur.convert_to('USD')
    expect(fifty_eur_in_usd.inspect).to eq("55.50 USD")
  end

  context "Arithmetics" do
    it "can perform Additon" do
      new_money = fifty_eur + twenty_dollar
      expect(new_money.inspect).to eq("68.02 EUR")
    end

    it "can perform subtraction" do
      new_money = fifty_eur - twenty_dollar
      expect(new_money.inspect).to eq("31.98 EUR")
    end
  end
end


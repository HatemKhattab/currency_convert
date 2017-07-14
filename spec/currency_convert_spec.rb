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

    it "can perform division" do
      new_money = fifty_eur / 2
      expect(new_money.inspect).to eq("25.00 EUR")
    end

    it "can perform multiplication" do
      new_money = twenty_dollar * 3
      expect(new_money.inspect).to eq("60.00 USD")
    end
  end

  context "Comparison" do
    fifty_eur_in_usd = fifty_eur.convert_to("USD")
    it "can perform equality" do
      expect(twenty_dollar == Money.new(20, 'USD')).to be true
      expect(twenty_dollar == Money.new(30, 'USD')).to be false
      expect(fifty_eur_in_usd == fifty_eur).to be true
    end

    it "can perform greater than and less than" do
      expect(twenty_dollar > Money.new(5, 'USD')).to be true
      expect(twenty_dollar < fifty_eur).to be true
    end
  end
end


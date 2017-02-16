require "spec_helper"

describe CurrencyConvert do
  it "has a version number" do
    expect(CurrencyConvert::VERSION).not_to be nil
  end

  it "can create a new money" do
    fifty_euros = Money.new('EUR', 50)
    expect(response).to be_success
  end
end

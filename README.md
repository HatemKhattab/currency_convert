# CurrencyConvert


[![Build Status](https://travis-ci.org/HatemKhattab/currency_convert.svg?branch=master)](https://travis-ci.org/HatemKhattab/currency_convert)

A gem to deal with money, convert to another currency and perform different comparisons.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'currency_convert'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install currency_convert

## Usage

   Create a new money
   ```ruby 
   fifty_euros = Money.new(50, 'EUR')
   # fifty_eur.amount   # => 50
   # fifty_eur.currency # => "EUR"
   # fifty_eur.inspect  # => "50.00 EUR"
   ```
   Configure the currency rates with respect to a base currency (here EUR)

   ```ruby 
   Money.conversion_rates('EUR', {
     'USD'     => 1.11,
     'Bitcoin' => 0.0047
   })
   ```

   Convert to different curency (return a Money instance) 

   ```ruby 
   fifty_eur.convert_to('USD') # => 55.50 USD
   ```

   Perform operations in different currencies:

   ```ruby 
   fifty_eur + twenty_dollars # => 68.02 EUR  
   fifty_eur - twenty_dollars # => 31.98 EUR
   fifty_eur / 2              # => 25 EUR
   twenty_dollars * 3         # => 60 USD
   ```
   Comparisons
   ```ruby 
   twenty_dollars == Money.new(20, 'USD') # => true   
   twenty_dollars == Money.new(30, 'USD') # => false
 
   fifty_eur_in_usd = fifty_eur.convert_to('USD')
   fifty_eur_in_usd == fifty_eur          # => true    
 
   twenty_dollars > Money.new(5, 'USD')   # => true
   twenty_dollars < fifty_eur             # => true   
   ```  

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/HatemKhattab/currency_convert.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


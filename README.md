# CurrencyConvert

A gem to deal with money, convert to another currency and perform comparison.


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

 # to create a new money 
   fifty_euros = Money.new(50, 'EUR')

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/currency_convert.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


# SortPlus

Very simple gem implementing a sort method to arrays of arrays and arrays of hashes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sortplus'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sortplus

## Usage

The module implements only a method in this first release, namely `array_sort`.

This method receives three parameters:

**1st parameter:** An array of arrays or an array of hashes.
**2nd parameter:** If an array of array was given, this parameter is an integer representing the column of the array to sort with. If an array of hashes was given, this parameter is the hask key to sort with.
**3rd parameter:** A boolean. If true, the sort will be in ascending order. If false, in descending order.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Knows issues

- The code is completely naïve in this first release. No error checking is performed. So, be careful!

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/EdDeAlmeidaJr/sortplus.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


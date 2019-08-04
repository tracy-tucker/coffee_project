# CoffeeSale

Welcome to CoffeeIcon: Specials!

This is a CLI Gem Portfolio project for OO Ruby learning purposes.

It shows an Object Oriented Ruby application using the following concepts:
Module Namespacing
The use of the concept of "self" with Class Methods
The use of the concept of "self" with Intance Methods
Instance Variables
Class Variables
Command Line Interface (CLI)
Data extraction from an external source

On the lighter side, it does provide a great user interface for retrieving the latest manager's specials on coffee pods from the CoffeeIcon website!
I do plan on ellaborating on this project in the future to pull even more data so stay tuned!


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coffee_sale'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coffee_sale

## Usage

After installing the gem, the interface will ask the user to make a number selection. The number is based on whatever number of listed specials that are currently available on the CoffeeIcon Manager's Special page.

Once the user has made a selection and hit ENTER, the interface will retrieve and display the description of that coffee to the user.
The description should include the coffee name, original price and sale price.

The interface will also prompt the user to either press any key to revisit the list to make another selection, or to type "exit" in order to exit the interface.
If the use decides to exit, the interface will prompt with a good-bye message and terminate interaction.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'dependable-transpiler-5955'/coffee_sale. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CoffeeSale project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'dependable-transpiler-5955'/coffee_sale/blob/master/CODE_OF_CONDUCT.md).

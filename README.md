# Vindetta

[![Build Status](https://travis-ci.org/kyledecot/vindetta.svg?branch=master)](https://travis-ci.org/kyledecot/vindetta)
[![Code Climate](https://codeclimate.com/github/kyledecot/vindetta/badges/gpa.svg)](https://codeclimate.com/github/kyledecot/vindetta)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vindetta'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vindetta

## Usage

```bash
NAME
    vindetta - Vehicle Identification Number (VIN) CLI

SYNOPSIS
    vindetta [global options] command [command options] [arguments...]

VERSION
    0.16.0

GLOBAL OPTIONS
    --help    - Show this message
    --version - Display the program version

COMMANDS
    decode, d        - Decodes a VIN
    generate, g      - Generates a random VIN
    help             - Shows a list of commands or help for one command
    transliterate, t - Transliterates a VIN character
    validate, v      - Validates a VIN
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kyledecot/vindetta.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

# Minitest macOS Notification

[![Gem Version](https://badge.fury.io/rb/minitest-macos-notification.svg)](http://badge.fury.io/rb/minitest-macos-notification)
![CI](https://github.com/technicalpanda/minitest-macos-notification/workflows/CI/badge.svg)

Simple macOS notification reporter for [Minitest Reporters](https://github.com/kern/minitest-reporters), based on the [minitest-osx](https://github.com/tombell/minitest-osx) gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "minitest-macos-notification"
```

And then execute:

```sh
bundle
```

Or install it yourself as:

```sh
gem install minitest-macos-notification
```

Note: You will need [Minitest Reporters](https://github.com/kern/minitest-reporters) installed too to use this gem.

## Usage

Add this to your test helper:

```ruby
require "minitest/autorun"
require "minitest/macos_notification"
require "minitest/reporters"
```

Then in your `Minitest::Reporters.use!` block use:

```ruby
Minitest::Reporters.use!(
  [
    Minitest::Reporters::SpecReporter.new,
    Minitest::Reporters::MacosNotificationReporter.new(title: "A title")
  ],
  ENV,
  Minitest.backtrace_filter
)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/technicalpanda/minitest-macos-notification. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting with this project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/technicalpanda/minitest-macos-notification/blob/main/CODE_OF_CONDUCT.md).

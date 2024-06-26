# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "minitest/macos_notification/version"

Gem::Specification.new do |spec|
  spec.authors = ["Stuart Chinery"]
  spec.description = "macOS notification reporter for Minitest Reporters, based on the minitest-osx gem."
  spec.email = ["code@technicalpanda.co.uk"]
  spec.files = Dir["lib/**/*", "MIT-LICENSE", "Rakefile", "README.md", "VERSION"]
  spec.homepage = "https://github.com/technicalpanda/minitest-macos-notification"
  spec.license = "MIT"
  spec.metadata["rubygems_mfa_required"] = "true"
  spec.name = "minitest-macos-notification"
  spec.required_ruby_version = ">= 3.0"
  spec.summary = "macOS notification reporter for Minitest Reporters"
  spec.version = Minitest::MacosNotification::VERSION

  spec.add_dependency "minitest", "~> 5.14"
  spec.add_dependency "minitest-reporters", "~> 1.4"
  spec.add_dependency "os", "~> 1.0"
  spec.add_dependency "terminal-notifier", "~> 2.0"
end

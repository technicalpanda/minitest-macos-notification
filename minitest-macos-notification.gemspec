# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "minitest/macos_notification/version"

Gem::Specification.new do |spec|
  spec.name          = "minitest-macos-notification"
  spec.version       = Minitest::MacosNotification::VERSION
  spec.authors       = ["Stuart Chinery"]
  spec.email         = ["stuart.chinery@gmail.com"]

  spec.summary       = "Simple macOS notification reporter for Minitest Reporters"
  spec.description   = "Simple macOS notification reporter for Minitest Reporters, based on the minitest-osx gem."
  spec.homepage      = "https://github.com/schinery/minitest-macos-notification"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "minitest", "~> 5.0"
  spec.add_dependency "minitest-reporters", "~> 1.3"
  spec.add_dependency "os", "~> 1.0"
  spec.add_dependency "terminal-notifier", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "minitest-fail-fast", "~> 0.1"
  spec.add_development_dependency "rake", "~> 12.0"
end

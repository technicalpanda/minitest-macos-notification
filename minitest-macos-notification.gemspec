# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "minitest/macos_notification/version"

Gem::Specification.new do |spec|
  spec.name          = "minitest-macos-notification-reporter"
  spec.version       = Minitest::MacosNotification::VERSION
  spec.authors       = ["Stuart"]
  spec.email         = ["stuart.chinery@gmail.com"]

  spec.summary       = "Simple macOS notification reporter for Minitest"
  spec.description   = "Simple macOS notification reporter for Minitest, based on the minitest-osx gem."
  spec.homepage      = "https://github.com/sleepingstu/minitest-macos-notification"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rake", "~> 10.0"
end

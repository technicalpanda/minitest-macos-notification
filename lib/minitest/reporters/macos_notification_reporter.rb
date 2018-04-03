# frozen_string_literal: true

require "minitest/reporters"
require "terminal-notifier"

module Minitest
  module Reporters
    class MacosNotificationReporter < BaseReporter
      def report
        super
        text = format("%d failures, %d errors, %d skips in %ss", failures, errors, skips, total_time)
        title = options[:title] || "Minitest"
        subtitle = (passed? ? "Successful \u{1f497}" : "Failed \u{1f4a9}")

        TerminalNotifier.notify(text, title: title, subtitle: subtitle)
      end
    end
  end
end

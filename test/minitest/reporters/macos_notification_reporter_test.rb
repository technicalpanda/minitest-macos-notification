# frozen_string_literal: true

require "test_helper"

module Minitest
  module Reporters
    class MacosNotificationReporterTest < Minitest::Test
      describe ::Minitest::Reporters::MacosNotificationReporter do
        it "should be something" do
          assert_kind_of Class, MacosNotificationReporter
        end
      end
    end
  end
end

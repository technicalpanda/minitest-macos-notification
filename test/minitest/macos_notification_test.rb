# frozen_string_literal: true

require "test_helper"

module Minitest
  class MacosNotificationTest < Minitest::Test
    describe ::Minitest::MacosNotification do
      it "should be something" do
        assert_kind_of Module, ::Minitest::MacosNotification
      end

      it "should have a version set" do
        assert ::Minitest::MacosNotification::VERSION
      end
    end
  end
end

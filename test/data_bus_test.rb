require "test_helper"

class DataBusTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::DataBus::VERSION
  end
end

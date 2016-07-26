require('minitest/autorun')
require('minitest/rg')
require_relative('car')
require_relative('engine')

class TestEngine < MiniTest::Test


  def setup
    @turbo_engine = Engine.new(10, 25)
  end


  def test_acceleration_turbo()
    @turbo_engine.acceleration
    assert_equal(90, @turbo_engine.fuel_consumption)
    assert_equal(25, @turbo_engine.acceleration)
  end

end
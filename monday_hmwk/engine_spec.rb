require('minitest/autorun')
require('minitest/rg')
require_relative('car')
require_relative('engine')

class TestEngine < MiniTest::Test


  def setup
    @turbo_engine = Engine.new(10, 25)
  end


  def test_turbo_engine_fuel_consumption()
    @turbo_engine.fuel_consumption
    assert_equal(10, @turbo_engine.fuel_consumption)
  end


  def test_turbo_engine_acceleration()
    @turbo_engine.acceleration
    assert_equal(25, @turbo_engine.acceleration)
  end

end
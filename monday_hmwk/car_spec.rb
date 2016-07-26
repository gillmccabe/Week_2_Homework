require('minitest/autorun')
require('minitest/rg')
require_relative('car')

class TestCar < MiniTest::Test

  def setup
    @test_car = Car.new(100, 0)
  end

  def test_accelerate()
    @test_car.accelerate
    assert_equal(95, @test_car.fuel_level)
    assert_equal(10, @test_car.speed)
  end


  def test_car_break()
    @test_car.accelerate
    @test_car.accelerate
    @test_car.car_break
    assert_equal(10, @test_car.speed)
  end

  
end
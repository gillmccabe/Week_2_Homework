require('minitest/autorun')
require('minitest/rg')
require_relative('car')
require_relative('engine')

class TestCar < MiniTest::Test

  def setup
    @turbo_engine = Engine.new(10, 25)
    @normal_engine = Engine.new(5, 10)
    @shit_engine = Engine.new(1, 50)
    @normal_car = Car.new(100, 0, @normal_engine)
    @turbo_car = Car.new(100, 0, @turbo_engine)
  end

  def test_accelerate_normal_car()
    @normal_car.accelerate
    assert_equal(95, @normal_car.fuel_level)
    assert_equal(10, @normal_car.speed)
  end

  def test_accelerate_turbo_car()
    @turbo_car.accelerate
    assert_equal(90, @turbo_car.fuel_level)
    assert_equal(25, @nturbo_car.speed)
  end


  # def test_car_break()
  #   @test_car.accelerate
  #   @test_car.accelerate
  #   @test_car.car_break
  #   assert_equal(10, @test_car.speed)
  # end


  # def test_accelerate()
  #   @test_car.accelerate
  #   assert_equal(95, @test_car.fuel_level)
  #   assert_equal(10, @test_car.speed)
  # end
  
  # def test_turbo_engine()
  #   @test_car.accelerate_turbo_engine
  #   assert_equal(90, @test_car.fuel_level)
  #   assert_equal(25, @test_car.speed)
  # end

end
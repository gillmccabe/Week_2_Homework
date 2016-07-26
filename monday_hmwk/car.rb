class Car

attr_reader(:fuel_level, :speed)

  def initialize(fuel_level, speed)
    @fuel_level = 100
    @speed = 0
  end

  def accelerate()
    @fuel_level -= 5
    @speed += 10
  end


  def car_break()
    if @speed >= 10
      @speed -= 10 
    else
      @speed = 0
    end
  end


  def accelerate_turbo_engine()
    @fuel_level -= @turbo_engine.fuel_consumption
    @speed += @turbo_engine.acceleration
  end



end

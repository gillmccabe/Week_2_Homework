class Car

attr_reader(:fuel_level, :speed, :engine)

  def initialize(fuel_level, speed, engine)
    @fuel_level = 100
    @speed = 0
    @engine = engine

  end

  # def accelerate()
  #   @fuel_level -= 5
  #   @speed += 10
  # end


  # def car_break()
  #   if @speed >= 10
  #     @speed -= 10 
  #   else
  #     @speed = 0
  #   end
  # end


  def accelerate_turbo_engine()
    @fuel_level -= @engine.fuel_consumption
    @speed += @engine.acceleration
  end



end

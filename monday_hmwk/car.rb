class Car

attr_reader(:fuel_level, :speed, :engine, :accelerate)

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
  end


  def accelerate(engine)
    @fuel_level -= @fuel_consumption
    @speed += @acceleration
  end




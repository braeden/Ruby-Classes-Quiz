class Ball
  def initialize
    @xcord = 0
    @ycord = 0
    @radius = 5
    @speed = 0
    @direction = "right"
    @type = "baseball"
    @color = "None"
  end
  def roll(distance, direction)
    circum = @radius * 2 * Math::PI
    rotat = circum/distance
    if direction.downcase == "left"
      puts @xcord
      @direction = "left"
      @xcord = @xcord - distance
      #Move x left distance
      puts "X Cordinate: "
      puts @xcord
      puts "Ball Rotations: "
      puts rotat.round(3)
    elsif direction.downcase == "right"
      @direction = "right"
      @xcord = @xcord + distance
      #Move x right distance
      puts "X Cordinate:"
      puts @xcord
      puts "Ball Rotations: "
      puts rotat.round(3)
    else
      puts "Enter valid direction"
    end
  end
  def deflate(amount)
    if @radius-amount > 0
      @radius = @radius - amount
      puts "Current Radius: "
      puts @radius
    else
      puts "Deflated to much"
    end
  end
  def inflate(amount)
    if @radius+amount < 10
      @radius = @radius + amount
      puts "Current Radius: "
      puts @radius
    else
      puts "POP"
      puts "Radius deflated to 0"
      @radius = 0
    end
  end
  def throwup(height)
    @ycord = 1
    while @ycord > 0
      if @ycord != height
        @ycord = @ycord + 1
        puts "UP"
      else
        height.times do
          @ycord = @ycord - height
          puts "Falling"
        end
      end
    end
    @ycord = 0
    puts "Ball back on the ground"
    puts @ycord
  end
  def paint(color)
    puts "Current Color: " + @color
    @color = color
    puts "New Color: " + @color
  end
end
b = Ball.new
b.roll(15, "right")
b.deflate(4)
b.inflate(4)
b.throwup(10)
b.paint("Yellow")

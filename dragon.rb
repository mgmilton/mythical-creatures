class Dragon
  attr_reader :name
              :color
              :rider
              :hungry

  def initialize(name, color, rider, hungry= 0)
    @name = name
    @color = color
    @rider = rider
    @hungry = hungry
  end

  def rider
    @rider
  end

  def color
    @color
  end

  def hungry?
    case
    when @hungry >3
      return false
    when @hungry < 3
      return true
    end
  end

  def eat
    @hungry += 1
  end
end

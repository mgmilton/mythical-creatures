require_relative 'werewolf_test'

class Werewolf
  attr_reader :name
              :location

  def initialize (name, location= "London")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def location
    @location
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    case
    when @human == true && @wolf == false
      @human = false
      @wolf = true
      @hungry = true
    when @human == false && @wolf == true
      @human = true
      @wolf = false
      @hungry = false
    end
  end

  def hungry?
   @hungry
  end

  def consumes(victim)
    case
    when @hungry
      victim.status = :dead
      @hungry = false
    end
  end


end

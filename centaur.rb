class Centaur
  attr_reader :name,
              :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @rested = 0
    @cranky = false
    @standing = true
    @laying = false
  end

  def shoot
    case
    when @rested < 3
      @rested += 1
      p "Twang!!!"
    when @rested >= 3
      p "NO!"
    end
  end

  def run
    case
    when @rested < 3
      @rested += 1
      p "Clop clop clop clop!!!"
    when @rested >= 3
      p "NO!"
    end
  end

  def cranky?
    case
    when @rested <= 0
      @cranky = false
    when @rested >= 3
      @cranky = true
    end
  end

  def standing?
    @standing
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def laying?
    @laying
  end

  def lay_down
    @standing = false
    @laying = true
    @rested = 3
  end

  def sleep
    case
    when @standing == true
      p "NO!"
    when @standing == false
      @rested = 0
    end
  end

  def potion
    case
    when @standing == true && @rested > 0
      @rested = 0
    when @standing == false
      @rested
      p "NO!"
    when @rested == 0
      p "I AM SICK NOW!"
    end
  end

  def rested?
    @rested
  end

end

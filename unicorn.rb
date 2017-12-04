class Unicorn
  attr_reader :name
              :color
              :sparklewords

  def initialize(name, color= "white")
    @name = name
    @color = color
  end

  def color
    @color
  end

  def white?
    case
    when @color == "white"
      return true
    when @color != "white"
      return false
    end
  end

  def say(sparklewords)
    p @sparklewords = "**;* #{sparklewords} **;*"
  end
end

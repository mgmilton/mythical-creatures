class Wizard
  attr_reader :name,
              :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = 3
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    @spell = "sudo #{spell}"
  end

  def rested?
    case
    when @rested <= 0
      return false
    when @rested > 0
      return true
    end
  end


  def cast
    @rested -= 1
    p "MAGIC MISSILE!"
  end

end

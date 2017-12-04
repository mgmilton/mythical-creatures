require_relative 'person'

class Medusa
  attr_reader :name,
              :statues

  def initialize(name, statues= [])
    @name = name
    @statues = statues
  end

  def statues
    @statues
  end

  def victim
    @victim
  end

  def stare(victim)
    case
    when @statues.length < 3
      @statues << victim
      victim.stoned
    when @statues.length >= 3
      @statues.shift.unstoned
      @statues << victim
      victim.stoned
    end
  end
  #is it possible to call an instance variable from another class?
end

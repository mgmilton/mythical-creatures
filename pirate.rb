class Pirate
  attr_reader :name,
              :job,
              :cursed

  def initialize(name, job= "Scallywag", cursed= 0, booty= 0)
    @name = name
    @job = job
    @cursed = cursed
    @booty = booty
  end

  def job
    @job
  end

  def cursed?
  case
  when @cursed >= 3
    true
  when @cursed <= 3
    return false
  end
  end

  def commit_heinous_act
    @cursed += 1
  end

  def rob_ship
    @booty += 100
  end

  def has_booty
    case
    when @booty > 0
      @booty
    when @booty <= 0
      return  false
    end
  end
end

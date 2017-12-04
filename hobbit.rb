class Hobbit
  attr_reader :name,
              :disposition,
              :age

  def initialize(name, disposition= "homebody", age= 0)
    @name = name
    @disposition = disposition
    @age = age
  end

  def disposition
    @disposition
  end

  def age
    @age
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    case
    when @age <= 32
      return false
    when @age >= 33
      return true
    end
  end

  def old?
    case
    when @age >= 101
      return true
    when @age <= 101
      return false
    end
  end

  def has_ring?
    case
    when @name == 'Frodo'
      return true
    when @name == 'Frodo'
      return false
    end
  end

  def is_short?
    true
  end
end

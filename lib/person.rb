class Person
  attr_accessor :name, :money, :happiness, :hygiene
  def initialize(name,money,happiness,hygiene)
    @name =name
    @money = money
    @happiness = happiness
    @hygiene = hygiene
  end
  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end
end

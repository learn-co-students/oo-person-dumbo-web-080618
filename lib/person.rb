
require 'pry'

class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def bank_account=(money)
    @bank_account = money
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def happiness=(points)
      if points <= 10 && points >= 0
        @happiness = points
      end
      if points > 10
        @happiness = 10
      elsif points < 0
        @happiness = 0
  end
end

def hygiene=(points)
    if points <= 10 && points >= 0
      @hygiene = points
    elsif points > 10
      @hygiene = 10
    elsif points < 0
      @hygiene = 0
    end
end

def happy?
  if @happiness > 7
    return true
  else
    return false
  end
end

def clean?
  if @hygiene > 7
    return true
  else
    return false
  end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end

def take_bath
  self.hygiene = @hygiene + 4
  "♪ Rub-a-dub just relaxing in the tub ♫"


end

 def work_out
   self.hygiene = @hygiene - 3
   self.happiness = @happiness + 2
   return "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness = @happiness + 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == "politics"
    self.happiness = @happiness - 2
    friend.happiness -= 2
    return 'blah blah partisan blah lobbyist'
  elsif topic == "weather"
    self.happiness = @happiness + 1
    friend.happiness += 1
    return 'blah blah sun blah rain'
  else
    'blah blah blah blah blah'

  end
end


end
binding.pry
0

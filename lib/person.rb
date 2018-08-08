# your code goes here
require 'pry'
class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    @hygiene > 7?true:false
  end

  def happy?
    @happiness > 7?true:false
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = (@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    # if @happiness + 2 > 10
    #   @happiness = 10
    # else
    #   @happiness += 2
    # end
    self.happiness = (@happiness + 2)
    self.hygiene = (@hygiene - 3)
    # @happiness += 2
    # if @hygiene - 3 < 0
    #   @hygiene = 0
    # else
    #   @hygiene -= 3
    # end
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    msg = "blah blah"
    if topic == "politics"
      msg += " partisan blah lobbyist"
      self.happiness -= 2
      person.happiness -= 2
    elsif topic == "weather"
      msg += " sun blah rain"
      self.happiness += 1
      person.happiness += 1
    else 
      msg += " blah blah blah"
    end 
    msg
  end
  # def happiness=(points)
  #   binding.pry
  #   if @happiness + points >= 10
  #     @happiness = 10
  #   else
  #     @happiness += points
  #   end
  #   # binding.pry
  #   @happiness
  # end

  # def happiness=(points)
  #   @happiness = points 
  #   if @happiness > 10 
  #     @happiness = 10
  #   elsif @happiness < 0 
  #     @happiness = 0
  #   end 
  #   @happiness
  # end
  
  # def hygiene=(points)
  #   @hygiene = points 
  #   if @hygiene > 10 || points > 10
  #     @hygiene = 10
  #   elsif @hygiene < 0 
  #     @hygiene = 0
  #   end 
  #   @hygiene
  # end
  def happiness=(points)
    if points >  10 
      @happiness = 10 
    elsif points < 0
      @happiness = 0 
    else 
      @happiness = points 
    end 
    @happiness 
  end 

  def hygiene=(points)
    if points >  10 
      @hygiene = 10 
    elsif points < 0
      @hygiene = 0 
    else 
      @hygiene = points 
    end 
    @hygiene 
  end 
 

end

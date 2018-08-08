require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene


  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end


  #setter
   def happiness=(points)
     if points < 0
       points = 0
       @happiness = points
     elsif points > 10
       points = 10
       @happiness = points
     else
       @happiness = points
     end
   end


 #setter
   def hygiene=(points)
     if points < 0
       points = 0
       @hygiene = points
     elsif points > 10
       points = 10
       @hygiene = points
     else
       @hygiene = points
     end
   end

   def happy?
     if @happiness > 7
       return true
     end
     false
   end

   def clean?
     if @hygiene > 7
       return true
     end
     false
   end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
 #
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
 #
  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
 #
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

 def work_out
   self.happiness += 2
   self.hygiene -= 3
   return "♪ another one bites the dust ♫"
 end
 #  def state_of_being
 #    if @happiness > 7
 #      return true
 #    end
 #    false
 #  end

end

#felix = Person.new('Felix')
#stella = Person.new('Stella')

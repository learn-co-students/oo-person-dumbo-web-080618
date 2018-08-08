# your code goes here
require "pry"
class Person
  attr_reader :name, :bank_account, :happiness, :hygiene
  #attr_accessor :bank_account, :happiness, :hygiene
  def  initialize(name, original_account= 25, original_happiness=8, original_hygiene=8)
    @name = name
    @bank_account = original_account
    @happiness= original_happiness
    @hygiene = original_hygiene
  end
  def happy?
     @happiness > 7 ? true : false

end
def clean?
  @hygiene > 7 ? true : false
end
def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end
def take_bath
  self.hygiene = @hygiene + 4
  #if @hygiene <= 6
  #  @hygiene += 4
  #else
  #  @hygiene= 10
  #end
  #@hygiene <= 6 ? @hygiene += 4 : @hygiene = 10
   "♪ Rub-a-dub just relaxing in the tub ♫"

end
def work_out
  self.happiness = @happiness +2
  self.hygiene = @hygiene - 3
  #@happiness <= 8 ? @happiness += 2 : @happiness = 10
  #@hygiene >= 3 ? @hygiene -= 3 : @hygiene = 0
   "♪ another one bites the dust ♫"
 end
 def happiness=(num)
   if num > 10
     @happiness = 10
   elsif num < 0
     @happiness = 0
   else
     @happiness = num
   end
#binding.pry


 end
 def hygiene=(num)
   if num > 10
     @hygiene = 10
   elsif num < 0
     @hygiene = 0
   else
     @hygiene = num
   end
 end
 def bank_account= (num)
   @bank_account = num

 end

def call_friend(friend)
  self.happiness = @happiness + 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"




end
def start_conversation(person, topic)
  if topic == "politics"
    self.happiness = @happiness -2
    person.happiness -= 2
    'blah blah partisan blah lobbyist'
  elsif topic == "weather"
    self.happiness = @happiness + 1
    person.happiness += 1
    'blah blah sun blah rain'
  else
     topic != "weather"
      'blah blah blah blah blah'


end






end


#def happiness
  #if @happiness < 0
  #  @happiness = 0
#  elsif @happiness > 10
  #  @happiness = 10
#  else
#    @happiness
#  end

#def bank_account
#  @bank_account= 25
#end
#def happiness
#  happiness=8

#end



end

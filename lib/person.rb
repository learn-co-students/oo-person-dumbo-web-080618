# your code goes here
require 'pry'
# your code goes here
class Person
 attr_reader :name, :happiness, :hygiene
 attr_writer
 attr_accessor :bank_account

 def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
 end

 def happiness=(new_happiness)
   if new_happiness < 0
     @happiness = 0
   elsif new_happiness > 10
     @happiness = 10
   else
     @happiness = new_happiness
   end
 end

 def hygiene=(new_hygiene)
   if new_hygiene < 0
     @hygiene = 0
   elsif new_hygiene > 10
     @hygiene = 10
   else
     @hygiene = new_hygiene
   end
 end

 def clean?
   @hygiene > 7
 end

 def happy?
   @happiness > 7
 end

 def get_paid(salary_amount)
   @bank_account += salary_amount
   "all about the benjamins"
 end

 def take_bath
   self.hygiene=(@hygiene + 4)
   "♪ Rub-a-dub just relaxing in the tub ♫"
 end

 def work_out
   self.hygiene=(@hygiene - 3)
   self.happiness=(@happiness + 2)
   "♪ another one bites the dust ♫"
 end

 def call_friend(person)
   person.happiness=(person.happiness + 3)
   self.happiness=(@happiness + 3)
   "Hi #{person.name}! It's #{@name}. How are you?"
 end

 def start_conversation(person, topic)
   if topic == "politics"
     person.happiness=(person.happiness - 2)
     self.happiness=(@happiness - 2)
     'blah blah partisan blah lobbyist'
   elsif topic == "weather"
     person.happiness=(person.happiness + 1)
     self.happiness=(@happiness + 1)
     'blah blah sun blah rain'
   else
     'blah blah blah blah blah'
   end
 end
end

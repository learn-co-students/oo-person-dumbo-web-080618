# # your code goes here
# First you need to create a person class that is initialized with a name that cannot be changed.
# Each instance of class Personshould be able to remember their name
# Each instance of class Person should start with $25 in their bank accounts
# Each instance of class Person should start with eight happiness points
# Each instance of class Person should start with eight hygiene points
# The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# The amount in the bank account should also be able to change, though it has no max or min.
require "pry"
class Person
attr_reader :name
attr_accessor :bank_account, :happiness_points, :hygiene_index
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness_points = 8
    @hygiene_index = 8
  end

def name
  @name
end

def bank_account
  @bank_account
end

#getter
def happiness
  @happiness_points
end

def hygiene
  @hygiene_index
end

#setter
def happiness=(points)
  if points >= 0 && points <= 10
    @happiness_points = points
  elsif points > 10
    @happiness_points = 10
  elsif points < 0
    @happiness_points = 0
  end
  end
def hygiene=(points)
  if points >= 0 && points <= 10
    @hygiene_index = points
  elsif points > 10
    @hygiene_index = 10
  elsif points < 0
    @hygiene_index = 0
  end
end

def clean?
  if @hygiene_index > 7
    return true

  else
    return false
  end
end
def happy?
  if @happiness_points > 7
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
  self.hygiene = @hygiene_index + 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"

end
def work_out
  self.hygiene = @hygiene_index - 3
  self.happiness = @happiness_points + 2
  return "♪ another one bites the dust ♫"
end

def call_friend(person)
  self.happiness += 3
  person.happiness += 3
  return "Hi #{person.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
    person.happiness -= 2
    self.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    person.happiness += 1
    self.happiness += 1
    return 'blah blah sun blah rain'
  else
    return 'blah blah blah blah blah'
  end
end
  # binding.pry

#   @happiness_points >= 0 && @happiness_points <= 10
#   @happiness_points = points
#
# end
#   if @happiness_points >= 0 && @happiness_points <= 10
#   @happiness_points = 0
# elseif
#   @happiness_points >= 0 && @happiness_points <= 10
#   @happiness = 10
# end
end



# def sub_happ_points(points)
#   if @happiness_points - points >= 0
#     @happiness_points -= points
#   else
#     @happiness_points = 0
#   end
# end
#
# def add_happ_points(points)
#   if @happiness_points + points <= 10
#     @happiness_points += points
#   else
#     @happiness_points = 10
#   end

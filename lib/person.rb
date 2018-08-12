require "pry"

class Person

attr_reader :name ,:happiness , :hygiene
attr_accessor :bank_account
# attr_writer :happiness
# attr_writer :money, :happiness, :hygiene

def initialize(name)
  @name =name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness=(new_num)
  if new_num > 10
    @happiness = 10
  elsif
    new_num < 0
    @happiness = 0
  else
    @happiness = new_num
  end
end



def hygiene=(new_num)
  if new_num > 10
    @hygiene = 10
  elsif
    new_num < 0
    @hygiene = 0
  else
    @hygiene = new_num
  end
  @hygiene

end

def clean?
  if @hygiene > 7
    true
  else
    false
  end
end
#
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end


  def take_bath

    self.hygiene+= 4
    hygiene=(self.hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"


  end

  def work_out
    self.happiness +=2
    self.hygiene -=3
    return "♪ another one bites the dust ♫"
end
#
def happy?
  if @happiness > 7
    true
  else
    false
  end
end
#
  def call_friend(friend)
    self.happiness += 3
    happiness=(self.happiness)

    friend.happiness += 3
    happiness=(friend.happiness)
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -=2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness += 1
        friend.happiness +=1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end


# eben = Person.new("eben", 21, 8, 8)
# juan = Person.new("Juan", 25, 7, 9)
#
# eben.call_friend("Juan")
# # binding.pry

require "pry"

class Person

  attr_reader :name
  # attr_writer :happiness
  # attr_writer :money, :happiness, :hygiene

  def initialize(name,money=25,happiness=8, hygiene=8)
    @name =name
    # @money = money
    @happiness = happiness
    # @hygiene = hygiene
  end
  def bank_account
    @money = 25
  end
  def bank_account=(num)
    @money = num
  end
  def happiness
    @happiness
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
  # def clean?
  #   if @hygiene > 7
  #     true
  #   else
  #     false
  #   end
  # end
  #
  #   def get_paid(salary_amount)
  #     @money += salary_amount
  #     puts "All about the Benjamins"
  #   end
  #
  #   def take_bath
  #     @hygiene += 4
  #     return "♪ Rub-a-dub just relaxing in the tub ♫"
  #   end
  #
  #   def work_out
  #     @happiness +=2
  #     @hygiene -=3
  #     return "♪ another one bites the dust ♫"
  # end
  #
  # def happy?
  #   if @happiness > 7
  #     true
  #   else
  #     false
  #   end
  # end
  #
  #   def call_friend(friend)
  #     # if Person
  #     #   @happiness += 3
  #     @happiness += 3
  #     # friend.happiness=3
  #     # puts self
  #     # binding.pry
  #   end

  # puts self

end


# eben = Person.new("eben", 21, 8, 8)
# juan = Person.new("Juan", 25, 7, 9)
#
# eben.call_friend("Juan")
# # binding.pry

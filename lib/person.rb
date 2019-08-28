require 'pry'

class Person

    attr_reader :name , :bank_account , :happiness , :hygiene
    attr_writer :bank_account , :happiness , :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end



# Person cannot overwrite their name, make sure to not allow a writer
# Person can change their bank account, we can add bank account to writer 

# Reader: All Attributes 
# Writer: Bank_account, Happiness_Points, Hygiene ,
# 


def happiness=(points)
    #binding.pry
  @happiness = points
    if points > 10
    @happiness = 10
  elsif points < 0
   @happiness = 0 
   
  end
    
end

def hygiene=(points)
    #binding.pry
  @hygiene = points
    if points > 10
    @hygiene = 10
  elsif points < 0
   @hygiene = 0 
   
  end
    
end
def happy?
    
    if happiness > 7
       return true
    else
        return false
    end 
end      
def clean?
    
    if hygiene > 7
       return true
    else
        return false
    end 
end 

def get_paid(salary)
    @bank_account += salary
return 'all about the benjamins'
end

def take_bath
#  self.hygiene += 4
self.hygiene=(self.hygiene + 4)
return "♪ Rub-a-dub just relaxing in the tub ♫"

end

def work_out
    self.hygiene=(self.hygiene - 3)
    self.happiness=(self.happiness + 2)
    return '♪ another one bites the dust ♫'
end
def call_friend(friend)
    self.happiness=(self.happiness + 3)
    friend.happiness=(friend.happiness + 3)
    return "Hi #{friend.name}! It's #{self.name}. How are you?"

end
def start_conversation(person, topic)
    if topic == "politics"
        self.happiness=(self.happiness - 2)
        person.happiness=(person.happiness - 2)
        return 'blah blah partisan blah lobbyist'
    end
     if topic == "weather"
        self.happiness=(self.happiness + 1)
        person.happiness=(person.happiness + 1)
        return 'blah blah sun blah rain'
     end
     if topic != "politics" && topic != "weather"
        return 'blah blah blah blah blah'
     end


end

end
 binding.pry
0

# your code goes here
class Person 
    attr_reader :name, :hygiene
    attr_accessor :bank_account, :happiness, :amount

    def initialize(name)
        @name = name 
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    def clean?
        self.hygiene > 7 ? true : false
    end   

    def happy?
        self.happiness > 7 ? true : false
    end 

    def get_paid(value)
        self.bank_account += value
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        [friend, self].each {|o| o.happiness += 3 }
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end   

    def start_conversation(person,topic)
        objects =[self,person]
        case topic
        when "politics"
            objects.each { |o| o.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when "weather"    
            objects.each { |o| o.happiness += 1}
            "blah blah sun blah rain"
        else    
            "blah blah blah blah blah"
        end    
    end    

end
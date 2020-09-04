class Character < ActiveRecord::Base
  
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say 
      self = Character.new(name: "Steve Urkel")
      self.catchphrase = "Did I do that?"
      self.save
    end
end
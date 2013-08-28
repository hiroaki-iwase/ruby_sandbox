
class Player
  def play_turn(warrior)
    @health = 20 if @health == nil

    ###captive
    if warrior.feel.captive?
      warrior.rescue!
    elsif (warrior.feel:backward).captive?
      warrior.rescue!:backward
    
    ###meet enemy
    ##back
    elsif (warrior.feel:backward).enemy?
      #turn
      warrior.pivot!
    ##center
    elsif warrior.feel.enemy?
      #attack
      if warrior.health > 4
        warrior.attack!
      #escape
      else
        warrior.walk!:backward
      end
    
    ##archer aim you
    elsif warrior.health < @health
      #go
      if warrior.health >= 18
        warrior.walk!
      #back
      else
        warrior.walk!:backward
      end
      
    #heal
    elsif warrior.health < 20
        warrior.rest!
        
    #wall
    elsif warrior.feel.wall?
      warrior.pivot!
      @wall = true

    #stairs
    elsif warrior.feel.stairs?
      warrior.pivot! if @wall == nil
      warrior.walk! if @wall

    ##wizard
    else
      begin
        warrior.look.each{|i|
          break if i.captive?
          raise if i.enemy?
        }
        warrior.walk!
      rescue
        warrior.shoot!
      end
    end
    @health = warrior.health
  end # End of playturn
end # End of Class
  

# bowling.rb
class Bowling
  attr_accessor :number, :tries 

  def initialize
    @tries = 0
  end

  def guess (a) 
    
    @tries = @tries + 1
    if (@number > a) 
      return 'L'
    elsif(@number < a) 
      return 'G'
    else
      return 'E'
    end
     
  end
end

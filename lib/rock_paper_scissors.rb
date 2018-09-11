class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1 = player1[1]
    p2 = player2[1]
    
    case p1 + p2 
      when 'PR','SP','RS','RR','SS','PP'
        then player1
      when 'RP','PS','SR'
        then player2
      else 
        raise NoSuchStrategyError.new ("Strategy must be one of R,P,S")
      end   
  end

  def self.tournament_winner(tournament)
    if  tournament[0][0].kind_of?(String)
      winner(tournament[0],tournament[1])
    else
      winner(tournament_winner(tournament[0]),tournament_winner(tournament[1]))
    end
  end

end

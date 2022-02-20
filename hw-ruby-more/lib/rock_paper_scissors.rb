class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    #sets player1's move to p1 and player2's to p2. It also makes them uppercase
    p1=player1[1].upcase
    p2=player2[1].upcase

    #raises an error if the move is not a R P or S
    raise NoSuchStrategyError,
    'Strategy must be one of R,P,S' if !self.validstrat?(p1) || !self.validstrat?(p2)

      #returns the player that wins
      if p1=='R' && p2=='P'
        return player2

      elsif p1=='P' && p2=='S'
        return player2

      elsif p1=='S' && p2=='R'
        return player2

      else
        return player1
      end

  end

  def self.tournament_winner(tournament)

    #define varibles used in the loops
    i=0
    m=0
    n=0
    p=0
    tourney=Array.new(tournament.length/2) { Array.new(2) { Array.new(2) }}

    #default case
    if tournament[0][0].is_a? String then
      self.winner tournament[0], tournament[1]
    #none default cases
    else
      #runs through all rounds in one column
      if tournament.length>1
        while i<tournament.length
          j=0
          while j<2
            temp=tournament[i][j]
            winner=self.winner temp[0],temp[1]
            j=j+1
            
            #creates an array of the winners
            tourney[m][n][p]=winner
            p=p+1
            if p==2
              p=0
              n=n+1
            end
            if n==2
              n=0
              m=m+1
            end
          end
          i=i+1
        end
        #started the next round with the people that won
        self.tournament_winner(tourney)
      else 
        #returns the final winner
        self.winner tournament[0][0][0],tournament[0][0][1]
      end
    end
  end

    #Checks to see if the input is a R P or S
  def self.validstrat?(strat)
    strat=~ /[RPS]/
  end

end

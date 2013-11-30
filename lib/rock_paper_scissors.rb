
											################################
											##						 	  ##
											##   นาย ณัฐนันท์ ประพันธ์ศิริ         5310613194  ##
											##						 	  ##
											##   นาย พนายสามารถ พงษ์สวัสดิ์  5310611271   ##
											##						 	  ##
											################################
class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ;end

  def self.winner(player1, player2)
    # YOUR CODE HERE
	#ตรวจสอบว่า Player ออกเป็น P,S,R หรือไม่ 
    unless ['P','S','R'].include?(player1[1]) and ['P','S','R'].include?(player2[1])
 		raise NoSuchStrategyError, "Strategy must be one of R,P,S" 	
    end
    if(player1[1].upcase<player2[1].upcase)#ถ้าค่าของ Player1น้อยกว่า Player2
    	if(player1[1].upcase=="P"&&player2[1].upcase=="S")#แต่ถ้าPlayer1 เป็น P และ Player2 เป็น S
    		return player2 #Player 2 ชนะ
    	else
    		return player1#Player1 ชนะ
    	end
    elsif (player1[1].upcase>player2[1].upcase)#ถ้าค่าของ Player2น้อยกว่า Player1
    	if(player1[1].upcase=="S"&&player2[1].upcase=="P")#แต่ถ้าPlayer2 เป็น P และ Player1 เป็น S
    		return player1#Player1 ชนะ
    	else
    		return player2#Player 2 ชนะ
    	end
    else
    	return player1#กรณีที่ค่าทั้ง 2 เท่ากัน ให้ Player1 ชนะเสมอ
    end
    		
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
	#Recursive จะหยุดเมื่อพบกค่าใน Array 2 มิติ เป็น String
    if(tournament[0][1].is_a? String)
    	return self.winner(tournament[0],tournament[1])
    else#ถ้ายังไม่พบให้เรียกตัวเองต่อไป
    	return self.winner(self.tournament_winner(tournament[0]),self.tournament_winner(tournament[1]))
	end
  end

end

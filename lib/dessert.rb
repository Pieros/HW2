
											################################
											##						 	  ##
											##   นาย ณัฐนันท์ ประพันธ์ศิริ         5310613194  ##
											##						 	  ##
											##   นาย พนายสามารถ พงษ์สวัสดิ์  5310611271  ##
											##						 	  ##
											################################
class Dessert
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code 
	#ถ้า calories น้อยกว่า 200 ให้return เป็น true
    if(@calories <200)
      return true
    else
      return false
    end
  end
  def delicious?
    # your code here
    return true
  end
  #Getter name
  def name
    @name
  end
  #Getter calories
  def calories
    @calories
  end
  #Setter name
  def name= (new_name)
    @name = new_name
  end
  #Setter calories
  def calories= (new_calories)
    @calories = new_calories    
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
    @name = flavor <<" Jelly Bean"
    @calories = 5
  end
  def delicious?
  #ถ้าชื่อเป็น licorice return เป็น false
    if(@name == 'licorice Jelly Bean')
      return false
    else
      return true
    end
  end
end

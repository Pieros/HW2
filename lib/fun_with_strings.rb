
											################################
											##						 	  ##
											##   นาย ณัฐนันท์ ประพันธ์ศิริ         5310613194  ##
											##						 	  ##
											##  นาย พนายสามารถ พงษ์สวัสดิ์   5310611271  ##
											##						 	  ##
											################################
module FunWithStrings
  def palindrome? 
    # your code here
    is = each_char.to_a.join#รับStringที่ส่งเข้ามา
    is = is.downcase#แปลงให้เป็นตัวเล็กทั้งหมด
    is =is.gsub(/[^a-z]/,"")#เอาอักขระพิเศษทั้งหมดออก
    re = is.reverse# ทำการ Reverse String
    return is==re #ถ้าตรงกัน Return true ถ้าไม่ Return false

  end
  def count_words
    # your code here
    is = each_char.to_a.join
	is = is.downcase
    is =is.gsub(/[^a-z " "]/,"")<<" "
    hash = Hash.new(0)
    arr =Array.new
	#ทำ String ให้เป็น Char
    is.each_char{|c| 
      if(c ==" ")#เมื่อพบ Char ที่เป็น "  " แสดงว่า Char ใน Array สามารถรวมเป็น 1 word ได้ 
        string = arr.join#นำ Char ใน Array รวมกันเป็น word
        if(string !="")
          hash[string] = hash[string]+1#นำมาใส่ใน Hash ถ้ายังไม่มี จะ Add เพิ่ม แล้วตั้ง Value เป็น 1 แต่ถ้ามีแล้ว จะเพิ่มจากของเดิม แล้ว Value +1
        end
        arr.clear#ทำการ clear Array เพื่อทำการหา word ใหม่  
      else
	  #ทำ Char มาเก็บไว้ใน Array 
       arr.push(c)
      end
    }
    return hash
  end
  def anagram_groups
    # your code here
   is = each_char.to_a.join
  is = is.downcase
    is =is.gsub(/[^a-z " "]/,"")<<" "
    arr =Array.new
    temp = Array.new
	#ทำการหา word ที่มีทั้งหมด มาเก็บไว้ใน Array arr
    is.each_char{|c| 
      if(c ==" ")
        string = temp.join
        if(string !="")
          arr.push(string)
        end
        temp.clear          
      else
       temp.push(c)
      end
    }
    return arr.group_by{ |string| string.chars.sort }.values#นำ word ที่ได้มาจัดกลุ่มที่มีตัวอักษรคล้ายกัน
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

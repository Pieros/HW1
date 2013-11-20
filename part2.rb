
											################################
											##						 	  ##
											##   นาย ณัฐนันท์ ประพันธ์ศิริ รหัส 5310613194  ##
											##						 	  ##
											##   นาย พีรวัส เรืองสวัสดิ์      รหัส 5310612048  ##
											##						 	  ##
											################################
									
def hello(name)
  # YOUR CODE HERE
  #Concats String เข้ากับตัวแปลที่ได้รับค่ามา
  return "Hello, " << name
end

##################################################
#เช็คว่า ตัวอักษรตัวแรกเป็น พยัญชนะ
def starts_with_consonant? s
  # YOUR CODE HERE
  if(!s.empty?)
	t=s.upcase
  	t=t.byteslice(0)#ตัดเอามาเฉพาะตัวแรก
	#ตัวเช็คว่าค่าที่ได้รับมามีตัวแรกที่ไม่ใช่ตัวอักษรหรือไม่
  	if(t.ord>=65 && t.ord<=122)
		#ถ้าอักษรตัวแรกไม่ใช่ AEIOU ให้ส่งค่า true
  		if((t!="A"&&t!="E"&&t!="I"&&t!="O"&&t!="U"))
  			return true
  		end
  	end
  end
  	return false   
end

##################################################
#เช็คว่าเลขฐาน 2 ที่ใส่มา หารด้วย 4 ลงตัวหรือไม่
def binary_multiple_of_4? s
  # YOUR CODE HERE
  n=s.length-1
  #ถ้าเลขฐาน 2หารด้วย 4 ลงตัว จะลงท้ายด้วย 00 
  if(s.byteslice(n-1,n)=="00")
  	return true
  else
  	return false
  end
end

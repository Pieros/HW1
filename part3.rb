
											################################
											##						 	  ##
											##   นาย ณัฐนันท์ ประพันธ์ศิริ รหัส 5310613194  ##
											##						 	  ##
											##   นาย พีรวัส เรืองสวัสดิ์      รหัส 5310612048  ##
											##						 	  ##
											################################

class BookInStock
# YOUR CODE HERE
	#รับค่าเริ่มต้นเข้ามา 
	def initialize(string_isbn,string_price)
		#กรณีที่ค่าเริ่มต้นของ Isbn ที่รับเข้ามาเป็น String เปล่า
		if(string_isbn.empty? )
		raise ArgumentError.new("should reject invalid ISBN number")
		end
		#กรณีที่ค่าเริ่มต้นของ Price ที่รับเข้ามามีค่าน้อยกว่าหรือเท่ากับ 0
		if(string_price<=0)
			if(string_price<0)
				raise ArgumentError.new("should reject negative price")
			else
				raise ArgumentError.new("should reject zero")
			end
		end
		#ถ้าผ่านทุกกรณีจะรับค่าตามปรกติ
		@isbn = string_isbn
		@price = string_price
	end
	#Method เพื่อใช้อ่านค่าของ ISBN
	def isbn
		@isbn
	end
	#Method เพื่อใช้เขียนค่าของ ISBN
	def isbn= (new_isbn)
		@isbn= new_isbn
	end
	#Method เพื่อใช้อ่านค่าของ Price
	def price
		@price
	end
	#Method เพื่อใช้เขียนค่าของ Price
	def price= (new_price)
		@price= new_price
	end
	#Method เพื่อแสดงค่าของ Price ออกเป็น Sring
	def price_as_string 
		price= @price.round(2) #ทำให้ค่าของ Price เป็นเลขทศนิยมไม่เกิน 2 ตำแหน่ง
  		price=price.to_s #แปลงเป็น String
  		num = price.length-price.index('.')
  		if(num<3)#กรณีที่เลขทศนิยมตำแหน่งที่ 2 มีค่าเป็น 0 จะไม่แสดง จึงต้องเติมเอง
  			return '$'<<price<<'0'
  		else
  			return '$'<<price
  		end
  	end
end
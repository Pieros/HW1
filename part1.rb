
											################################
											##						 	  ##
											##   นาย ณัฐนันท์ ประพันธ์ศิริ รหัส 5310613194  ##
											##						 	  ##
											##   นาย พีรวัส เรืองสวัสดิ์      รหัส 5310612048  ##
											##						 	  ##
											################################

#Method SUM
def sum arr
  # YOUR CODE HERE
  i=0
  sum=0
  #เช็คว่า Array มีสมาชิคหรือไม่ 
	if(arr.length>0)
  #ถ้า Array มีสมาชิค ให้ทำการค่าสมาชิคทั้งหมดใน Array แล้วส่งค่าผลลัพธ์ที่ได้
		while(i<arr.length)
			sum=sum+arr[i]
			i=i+1
		end
	end
  	return sum
  end
  #########################################################
#Method MAX-2-SUM
def max_2_sum arr
  # YOUR CODE HERE
  #เช็คว่า Array มีสมาชิคหรือไม่ 
  if(arr.length<=0)
  	return 0 #ถ้าไม่มี ให้ส่งค่าเป็น 0
  else # ถ้ามี
  		index = 0
 		max =arr[index]
  		i=0
		# ทำการหาสมาชิคใน Array ที่มีค่ามากที่สุด
  			while(i<arr.length)
  				if(max<=arr[i])
  					max=arr[i]
  					index = i
  				end
  				i=i+1
  			end
  			if(arr.length>1)# เช็คว่า Array มีสมาชิคมากกว่า 1 ตัว
  				max2=arr[0]
  				i=0
			# ทำการหาสมาชิคใน Array ที่มีค่ามากที่สุดรองลงมา
  			while(i<arr.length)
  				if(max2<=arr[i]&&i!=index)
  					max2=arr[i]
  				end
  				i=i+1
  			end
			else max2=0
			end
			#ส่งผลลัพธ์การบวกที่ได้จากการเอาสมาชิคที่มีค่ามากที่สุดและสมาชิคที่มีค่ารองลงมา
  		return max2+max
  end
end
  #########################################################
  #Method SUM TO N
def sum_to_n? arr, n
  # YOUR CODE HERE
  #กรณีที่มีสมาชิคใน Array 0 ตัว และ เลขจำนวนเต็มมีค่าเท่ากับ 0 
  if(arr.length ==0 && n==0)
  	return true
	#กรณีที่มีสมาชิคใน Array 0 ตัวหรือน้อยกว่า
  elsif(arr.length<=0)
  	return false
	#กรณีอื่นๆ
  else
  #ทำการตัวหาผลบวกของสมาชิคใน Array 2 ตัว ที่ได้ผลลัพธ์เท่ากับเลขจำนวนเต็ม n
  	i=0
  	while(i<arr.length-1)
  		j=i+1
  		while(j<arr.length)
  				sum = arr[i]+arr[j]
				#เมื่อพบให้ทำการส่งค่า true จบการทำงาน
  				if(n == sum)
  					return true
  				end
  				j=j+1
  		end
  		i = i+1
  	end
	#ถ้าไม่พบให้ทำการส่งค่า false จบการทำงาน
  	return false
  end
end

	

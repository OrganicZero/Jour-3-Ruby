def levels_getter()
	height = 0
	while height.even? do
		puts "Entre un nombre impair d'étages"
		print "> "
		height = gets.chomp.to_i
	end
	return height
end

def half_pyramid(height)
	brick = 1

	height.times do
		brick.times do
			print "#"
		end
		brick += 1
		puts ""
	end
end

def full_pyramid(height)
	brick = 1
	empty = height - brick

	height.times do
		empty.times do
			print ' '
		end
		brick.times do
			print '#'
		end
		brick +=2
		height -=1
		empty -=1
		puts ""
	end
end

def wtf_pyramid(height)
	half = 0
	brick = 1
	empty = (height/2)

	height.times do
		empty.times do
			print ' '
		end
		brick.times do
			print '#'
		end
		if half < (height/2)
			brick +=2
			half +=1
			empty -=1
		else
			brick -=2
			half +=1
			empty +=1
		end
		puts ''
	end
end

wtf_pyramid(levels_getter)
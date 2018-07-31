

def stockPicker(array)
	i = 0
	profits = []
	p array
	max_nums = []

	while i < array.length
		profits.push(stockCounter(array, i))
		max_nums.push(((stockCounter(array, i)).max))
		i += 1
	end

	puts "profits.max = #{profits.max}"
	puts
	p "max_nums" + max_nums.to_s
	puts
	p profits.map { |e| e  }

	high_prof = max_nums.max
	puts high_prof
	high_prof_index = max_nums.index(high_prof)
	puts "index of max_nums highest profit = #{high_prof_index}"
	puts (profits[high_prof].index(high_prof))

		
end

def stockCounter(array, num)
	sums = []
	j = 0
	while j < array.length	
		if array[j + num] == nil
			break
		end

		sums.push(array[j + num] - array[num])
		j += 1

	end
	sums
end



p stockPicker([17,3,6,9,15,8,6,1,10])

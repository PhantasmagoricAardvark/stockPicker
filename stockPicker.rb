

def stockPicker(array)
	i = 0
	profits = []
	p "Prices for each day: #{array}"
	max_nums = []

	while i < array.length
		profits.push(stockCounter(array, i))
		max_nums.push(((stockCounter(array, i)).max))
		i += 1
	end


	high_profits = max_nums.max
	high_prof_index = max_nums.index(high_profits)


	puts "[Best day to buy, best day to sell]"
	[high_prof_index, array.index(high_profits + array[high_prof_index])]
	
		
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



p stockPicker([19, 10, 6, 8, 15, 9, 6, 3, 1])

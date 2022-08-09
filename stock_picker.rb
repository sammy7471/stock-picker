def stock_picker(array)
  buy = array[0]
  profit = 0
  ind = 0
  indexes = []
  array.each_with_index do |element, index|
   if element < buy
      buy = element
      ind = index
   elsif element - buy > profit
      profit = element - buy
      indexes = [ind, index]
   end
  end
  puts indexes
  puts profit
end
stock_picker([17,3,6,9,15,8,6,1,10])
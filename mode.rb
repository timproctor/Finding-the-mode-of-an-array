def mode(numbers_in_an_array)
  a_tally = Hash.new(0)
  
  numbers_in_an_array.each do |number|
    a_tally[number] += 1
  end
  
  most_tallied = a_tally.values.sort.last
  number_most_tallied = Array.new
  
  a_tally.each do |number, tally|
    numbers_most_tallied << number if tally == most_tallied
  end
  
  return numbers_most_tallied
end

p mode([2,3,6,3,9,7,3,1,2,5,7,2]) => [2,3]

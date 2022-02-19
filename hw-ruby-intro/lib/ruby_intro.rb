# Part 1

def sum(array)
  #set s to 0
  total=0

  #adds all numbers together
  array.each{|x| total+= x}

  #returns total
  total
end

def max_2_sum(array)
  #returns 0 is the array is empty
  return 0 if array.empty?
  #returns the value in the array if it is the only one
  return array[0] if array.length==1
  #sorts the array
  sarray=array.sort
  #returns the 2 heighest values added together
  return (sarray[-1]+sarray[-2])
end

def sum_to_n?(array, n)
  return false if array.empty?
  
  h=Hash.new
  array.each{|x|
    if h.key? x
      return true
    else
      h[n-x]=n
    end

  }

return false

end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

# When done, submit this entire file to the autograder.

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
  #returns false if the array is empty or has only 1 element
  return false if array.empty? || array.length==1

  #goes through all permuatation using 2 elments of the array
  #if any equal n then it returns true
  array.permutation(2).any? { |a,b| a+b==n}

end

# Part 2

def hello(name)
  #prints out Hello followed by the entered name
  return "Hello, #{name}"
end

def starts_with_consonant? (s)
  #check to see if the entered string starts with a consonant
  /^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/.match(s)!=nil
end

def binary_multiple_of_4? (s)
  #returns true if input is 0
  return true if s=="0"

  #returns true if the number ends with 00 and contains only 0's and 1's
  /^[10]*00$/.match(s)!=nil

end

# Part 3

class BookInStock

  #allows the isbn and price to be accessed
  attr_accessor :isbn
  attr_accessor :price

  #constructor
  def initialize(isbn,price)
    #gives an error if the input in invalid
    raise ArgumentError,
      "Invalid Argument" if isbn.empty? || price<=0
    #sets the isbn and price entered to the variables
    @isbn=isbn
    @price=price

  end

  #converts the price to look nice
  def price_as_string
    sprintf("$%2.2f",@price)
  end

end

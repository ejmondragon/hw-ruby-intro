# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr = arr.sort
  if arr.length > 1
    arr[-1] + arr[-2]
  elsif arr.length == 1
    arr[0]
  else
    return 0
  end
end

##
#this method subtracts the current number
#from the number n, then checks for the
#difference
def sum_to_n? arr, n
  if arr.length > 1
    for i in arr do
      ndx = arr.find_index(i)
      x = arr.delete_at(ndx)
      if arr.include?(n - x)
        return true
      end
      arr.insert(ndx, x)
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

##
#gets the first letter of the string
#and the checks if it is not a vowel
#also making sure that it is a letter
def starts_with_consonant? s
  first = s[0,1].downcase
  vowels = ['a', 'e', 'i', 'o', 'u']
    
  if vowels.include?(first)
    return false
  end
  if first =~ /[[:alpha:]]/
    return true
  end
end

##
#this method traverses through a binary 
#number via string by character
#and adds up the value it would be in 
#binary to return whether it is divisible by 4
def binary_multiple_of_4? s
  if s =~ /[^01]/ or s.empty?
    return false
  end
  chars = s.split('')
  chars = chars.reverse
  binary_num = 0
  chars.each_with_index do |c, ndx|
    binary_num += (c.to_i * (2**ndx))
  end
  
  if (binary_num % 4) == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(i, p)
    if i == ''
      raise ArgumentError
    end
    @isbn = i
    if p <= 0
      raise ArgumentError
    end
    @price = p
  end
  
  def price_as_string
    if @price != nil
      "$" + '%.2f' % @price.to_s
    end
  end
  
  def isbn
    @isbn
  end
  def isbn=(i)
    @isbn = i
  end
  
  def price
    @price
  end
  def price=(p)
    @price = p
  end
end
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  s=0
  arr.each do |i|
    s+=i;
  end
  s
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.size==1
  arr=arr.sort
  arr[arr.size-2]+arr[arr.size-1]
end

def sum_to_n? arr, n
  return false if arr.empty?
  return false if arr.size==1
  i=0
  j=0
  while i < (arr.size-1) 
   a=arr[i]
   j=i+1
    while j<arr.size
        b=arr[j]
        return true if a+b==n
        j=j+1
    end
      i=i+1
  end
  false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s==""
    return false
  elsif s =~ /^[^a-zA-Z](.*)/
    return false
  elsif s=~ /^[aeiouAEIOU](.*)/
    return false
  end
  true
end

def binary_multiple_of_4? s
  return false unless s =~ /^[01]+$/
    s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock

def initialize(isbn, price)
      raise ArgumentError if isbn.empty?
      raise ArgumentError if price <= 0
      @isbn = isbn
      @price = price
end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
      "$#{sprintf("%.2f", @price)}"
  end

end

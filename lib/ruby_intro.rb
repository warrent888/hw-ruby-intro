# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |x|
    total += x
  end
  return total
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  best = -999999
  second = -999999
  arr.each do |x|
    if x >= best
      second = best
      best = x
      next
    end
    if x >= second
      second = x
    end
  end
  return best + second
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  end
  if arr.length == 1
    return false
  end
  arr.each_with_index do |val, i|
    arr.each_with_index do |val, j|
      if i == j
        next
      end
      if (arr[i] + arr[j]) == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s =~ /\A[b-df-hj-np-tv-z]/ or s =~ /\A[B-DF-HJ-NP-TV-Z]/
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s !~ /^[0-1]+/
    return false
  end
  if s.length < 2
    if s == "0"
      return true
    end
    return false
  end
  last_two = s.reverse[0...2].reverse
  if last_two == "00"
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length < 1 or price <= 0
      raise ArgumentError.new("Invalid argument")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    price = @price.to_s
    if price.include? "."
      last_two = price.reverse[0...2].reverse
      if last_two.include? "."
        price += "0"
      end
    else
      price += ".00"
    end
    return ("$" + price)
  end
end


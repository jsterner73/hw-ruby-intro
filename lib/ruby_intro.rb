# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr.max(2).inject(0, :+)
end

def sum_to_n? arr, n
  return false if arr.length < 2
  !! arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  optns = 'aeiou'.chars
  !s.empty? && s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  s =~ /^[01]+$/ && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn_str, price
    raise ArgumentError if !isbn_str.is_a?(String) || isbn_str.empty? || \
          !( price.is_a?(Integer) || price.is_a?(Float) ) || price <= 0

    @isbn   = isbn_str
    @price  = price
  end


  def price_as_string
    "$%.2f" % @price
  end

end

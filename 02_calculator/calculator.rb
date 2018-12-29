# write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  num = 0
  arr.each do |x|
    num += x
  end
  num
end

def multiply(*nums)
  product = 1
  nums.each do |x|
    product *= x
  end
  product
end

def power(num, exp)
  num**exp
end

def factorial(num)
  return 1 if (0..1).cover?(num)

  num * factorial(num - 1)
end

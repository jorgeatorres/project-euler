max = 4000000
sum = 0

fib = [1, 2]

while fib[1] < max
  if fib[1] % 2 == 0
    sum = sum + fib[1]
  end
  
  prev = fib[1]
  fib[1] = fib[0] + fib[1]
  fib[0] = prev
end

puts sum
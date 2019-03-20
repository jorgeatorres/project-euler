def is_prime(n)
  for d in 2..n-1
    if n % d == 0
      return false
    end
  end
  
  return true
end

def prime_factors(n)
  if n == 1
    return [1]
  end

  factors = []
  (1...((n+1)/2)).each do |i|
    if (n % i == 0) && is_prime(i)
      factors.push(i)
    end
  end
  
  return factors
end

puts prime_factors(600851475143).max
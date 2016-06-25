=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

def prime_number (number)
  i = 2
  prime = true
  while i < number 
    if number % i == 0
      prime = false
      return prime
    end
    i += 1
  end
  return prime
end

def largest_prime (number)
  i = 2
  factor = number
  while prime_number(factor) == false do
    if factor % i == 0
      factor = factor/i
    else 
      i += 1
    end
  end
  puts factor
end

largest_prime(600851475143)

## Largest prime factor

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def prime_factors(n)
  i, lst = 2, []

  while (i*i <= n) do
    if ( n%i == 0)
      lst << i
      n /= i
    else
      i += 1
    end
  end

  lst<<n
end

puts (prime_factors(600851475143)).max


## Even Fibonacci numbers

# Each new term in the Fibonacci sequence is generated by adding the previous 
# two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do 
# not exceed four million, find the sum of the even-valued terms.

def fib(n)
  if n == 1 || n == 2
    n
  else
    fib(n-1) + fib(n-2)
  end
end

def even_fib_sum(n)
  sum,i = 0,1

  while true
    j = fib(i) 

    if (j % 2 == 0)
      sum += j
    end

    if j >= n
      return sum
    end
    
    i += 1
  end
end

puts even_fib_sum(400_0000)

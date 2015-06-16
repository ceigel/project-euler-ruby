require 'prime'

def largest_prime_factor(num)
  Prime.each(Math.sqrt(num)).select{|p| num % p ==0}.to_a.last
end

def main
  n = largest_prime_factor(600851475143)
  puts "Largest primes is #{n}"
end

if __FILE__ == $PROGRAM_NAME
  main
end

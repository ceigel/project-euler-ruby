
def find_smallest_divisible(max)
  num = 1
  max.downto(2) do |n|
    if num % n != 0
      num *= n / num.gcd(n)
    end
  end
  num
end

def main(num)
  puts find_smallest_divisible(num)
end

if __FILE__ == $PROGRAM_NAME
  main((ARGV[0] || "20").to_i)
end

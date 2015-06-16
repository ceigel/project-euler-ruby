def dummy_solution(n)
  1.upto(n - 1).select{|v| v % 5 == 0 || v % 3 == 0}.reduce(:+)
end

def sum_n(n)
  n * (n + 1) / 2
end

def smart_solution(n)
  n -= 1
  3 * sum_n(n / 3) + 5 * sum_n(n / 5) - 15 * sum_n(n / 15)
end

def main(count)
  puts "Dumy: %d"%dummy_solution(count)
  puts "Smart: %d"%smart_solution(count)
end

if __FILE__ == $PROGRAM_NAME
  count = (ARGV[0] || 1000).to_i
  main(count)
end

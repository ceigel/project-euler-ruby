def fibonacci
  a = 0
  b = 1
  Enumerator.new do |y|
    loop do
      a, b = b, a + b
      y.yield a
    end
  end
end

def main
  sum = fibonacci.lazy
    .take_while{|n| n < 4_000_000}
    .select{|n| n %2 == 0}
    .reduce(:+)

  puts "Sum: #{sum}"
end

if __FILE__ == $PROGRAM_NAME
  main
end

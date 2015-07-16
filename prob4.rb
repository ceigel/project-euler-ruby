require 'benchmark'
def palindrome?(num)
  str = num.to_s
  str == str.reverse
end

def biggest_palindrome(factor_length)
  max = (10 ** factor_length) - 1
  min = (10 ** (factor_length - 1)) - 1
  min.upto(max).flat_map{|n| n.upto(max).map{|p| [n, p, n * p]}}.select{|a,b,n| palindrome?(n)}.max_by{|a,b,n| n}
end

def main(factor_length)
  palin = 0
  Benchmark.bm do |x|
    x.report do
      palin = biggest_palindrome(factor_length)
    end
  end
  puts "biggest palindrome = #{palin[0]} * #{palin[1]} = #{palin[2]}"
end

if __FILE__ == $PROGRAM_NAME
  factor_length = ARGV[0] ? ARGV[0].to_i: 2
  main(factor_length)
end

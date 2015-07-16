require 'benchmark'
def solution1(max)
  seq = 1.upto(max)
  (seq.inject(:+) ** 2) - seq.map{|x| x ** 2}.inject(:+)
end

def solution2(max)
  seq = 1.upto(max).to_a
  seq.product(seq).reject{|a,b| a == b}.map{|a,b| a * b}.inject(:+)
end

def main(max)
  s1 = 0
  s2 = 0
  Benchmark.bm do |x|
    x.report("Solution1") {s1 = solution1(max)}
    x.report("Solution2") {s2 = solution2(max)}
  end

  puts "Solution1 returns #{s1}"
  puts "Solution2 returns #{s2}"
end

if __FILE__ == $PROGRAM_NAME
  main((ARGV[0] || "100").to_i)
end

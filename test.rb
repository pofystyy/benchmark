require_relative "benchmark"

class Test
  extend Benchmark

  def b
    p 'b'
  end

  benchmark :a
end

Test.new.a
#=> a
#=> 10
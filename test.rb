require_relative "benchmark"

class Test
  include Benchmark

  def a
    sleep 10
    p 'a'
  end

  def b
    p 'b'
  end

  benchmark :a
end

Test.new.a
#=> a
#=> 10
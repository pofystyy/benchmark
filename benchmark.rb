require "benchmark"

module Benchmark
  def benchmark(method)
    define_method "#{method}" do
      time = Benchmark.measure { method }
      p "#{method}"
      p time.real
    end
  end
end

require "benchmark"

module Benchmark
  def self.included(base)
    base.extend(ClassBenchmark)
  end

  module ClassBenchmark
    def benchmark(method)
      time = Benchmark.measure { method }
      p time.total
    end
  end
end

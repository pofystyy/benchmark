require "benchmark"

module Benchmark
  def self.included(base)
    base.extend(ClassBenchmark)
  end

  module ClassBenchmark
    def benchmark(method)
      time = Benchmark.realtime { method }
      p time
    end
  end
end

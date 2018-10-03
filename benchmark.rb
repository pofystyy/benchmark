require "benchmark"

module Benchmark
  def self.included(base)
    base.extend(ClassBenchmark)
  end

  module ClassBenchmark
    def benchmark(met)
      alias_method "_#{met}", met
      define_method met do
        p Benchmark.realtime { send "_#{met}" }
      end
    end
  end
end

require "benchmark"

module Benchmark
  def self.included(base)
    base.extend(ClassBenchmark)
  end

  module ClassBenchmark
    def benchmark(met)
      alias_method "new_#{met}", met
      define_method met do
        p time = Benchmark.realtime { send "new_#{met}" }
      end
    end
  end
end

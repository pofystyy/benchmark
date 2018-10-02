require "benchmark"

module Benchmark
  def self.included(base)
    base.extend(ClassBenchmark)
  end

  module ClassBenchmark
    def benchmark(met)
      alias_method "new_#{met}", "#{met}"
      define_method "#{met}" do
        time = Benchmark.realtime do
          send "new_#{met}"
        end
        p time
      end
      return "#{met}"
    end
  end
end

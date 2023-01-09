# https://samsaffron.com/archive/2015/03/31/debugging-memory-leaks-in-ruby
# https://rollout.io/blog/the-definitive-guide-to-ruby-heap-dumps-part-ii/

# Disable by default as it consumes a lot of resources
if ENV["ENABLE_MEMORY_PROFILING"] == "true"
  require "objspace"
  ObjectSpace.trace_object_allocations_start

  Signal.trap("USR1") do
    Thread.new do
      puts "Dumping memory of #{Process.pid}"
      GC.start
      ObjectSpace.dump_all(output: :stdout)
    end
  end
end

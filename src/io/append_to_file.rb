#!/bin/env ruby

open("/home/aputla/tmp/one.txt", "a") do |fd|
  fd.puts("hello world")
end

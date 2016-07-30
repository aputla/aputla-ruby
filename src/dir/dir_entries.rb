#!/usr/bin/env ruby

rootdir = "."
Dir.entries(rootdir).each do |filename|
  next if filename.start_with?(".")
  puts filename
end

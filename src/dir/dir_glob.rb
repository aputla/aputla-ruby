#!/usr/bin/env ruby

current_dir = Dir.pwd
Dir.glob("**/*").each do |entry|
  puts entry
end

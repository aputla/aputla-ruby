require "json"
require "pp"

filename = ARGV.first
raise "filename not provided" if filename.nil?
puts "Reading file: #{filename}"
pp JSON.parse(IO.read(filename))

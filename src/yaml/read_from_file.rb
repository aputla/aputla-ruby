require "yaml"
require "pp"

filename = ARGV.shift
raise "filename not provided" if filename.nil?
pp YAML::load(IO.read(filename)

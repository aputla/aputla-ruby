#!/bin/env ruby

fd = open(__FILE__)
begin
  while (line = fd.gets) != nil
    puts line
  end
ensure
  fd.close
end

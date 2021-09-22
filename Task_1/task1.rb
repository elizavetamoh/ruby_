#!/usr/bin/env ruby

command = ARGV[0].to_s
file = ARGV[1].to_s

if command == 'z'
	puts %x[gpg -c ../../#{file}]
end
if command =='r'
	puts %x[gpg -d ../../#{file}.gpg]
end

puts command






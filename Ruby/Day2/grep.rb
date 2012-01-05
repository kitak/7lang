#!/usr/bin/ruby
regex = Regexp.new(ARGV[0])
filename = ARGV[1]
lineno = 0

File.open(filename) do |file|
  file.each_line do |line|
    lineno += 1
    puts "#{lineno}: #{line}" if line =~ regex
  end
end

#!/usr/bin/ruby
regex = Regexp.new(ARGV[0])
ARGV.shift();

ARGV.each{|filename|
  lineno = 0

  File.open(filename) do |file|
    file.each_line do |line|
      lineno += 1
      puts "#{filename} #{lineno}: #{line}" if line =~ regex
    end
  end
}
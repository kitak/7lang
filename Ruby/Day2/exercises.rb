
arrayOne=(0..15).to_a
i=0
arrayOne.each do |a|
  print a, "\t"
  i += 1
  print "\n" if i % 4 == 0 
end

print "\n\n"

arrayOne.each_slice(4){|a| p a}





secret = rand(100) + 1
puts 'I am thinking of a number between 1 and 100, guess what it is and you will be rewarded!'

guess = -1
while guess != secret
  guess = gets.to_i
  puts 'Too low, try again.' if guess < secret
  puts 'Too high, try again' if guess > secret
end

puts 'You got it!'
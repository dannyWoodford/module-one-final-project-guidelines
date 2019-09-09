require_relative '../config/environment'

puts "welcome"

ring = gets.chomp

answer = Ring.find_by(name: "#{ring}")
# binding.pry
location = gets.chomp
answer.ring_found(location)


puts "HELLO WORLD"

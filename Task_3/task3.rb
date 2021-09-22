#!/usr/bin/env ruby

puts "=" * 18
puts "| Игра Миллионер |"
puts "=" * 18

a=[]
f = File.new("data.txt")
while line = f.gets
	a << line
end
f.close

i = 0
points = 0
while i<a.size
	for j in (1..4) do
		right = i+j if a[i+j].include?("+")
	end
	a[right] = a[right][0..a[right].size-3]
	puts a[i..i+4]
	ans = gets.to_i
	points+=1 if ans == right%5
	i+=5
end

if points == a.size/5
	puts "=" * 23
	puts "| Вы выиграли миллион |" 
	puts "=" * 23
else
	puts "| Вы ответили на #{points} вопросов из #{a.size/5}. Попробуйте еще раз |"	
end

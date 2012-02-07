# The words come from file
wordsfile = open("words.txt")
a = wordsfile.read(wordsfile.size).to_s
a = a.scan(/\w+/)
target = ""
while(target == "") do
i = 10
word = ""
while (word.size < 10) do
	word = a[(Time.now.to_i + i) % a.size]	
	i = i+200
end
if word[0].upcase! == nil
	target = word
end
end

# target = File.readlines("/usr/share/dict/words").sample.chomp.upcase

# Now we have a word
losecounter = 10
puts "Set the difficulty h for hard, m for medium, e for easy"
difficulty = gets[0]
case difficulty
when 'h'
	losecounter = 5
when 'm'
	losecounter = 10
when 'e'
	losecounter = 15
else
end
puts "GoGoGo"
ungeraten = target
geraten = target.tr(ungeraten,'_') 
puts geraten
while geraten != target && losecounter != 0 do
	char = gets[0]
	ungeraten = ungeraten.tr(char.downcase, '')
	ungeraten = ungeraten.tr(char.upcase, '')
	temp = geraten
	geraten = target.tr(ungeraten, '_')
	if temp != geraten
		puts geraten
	else	
		puts geraten
		losecounter = losecounter-1
		puts "Try again!" + losecounter.to_s
	end
end
if losecounter > 0
	puts 'Awesome!'
else
	puts 'You lose!'
	puts target + " would have been the solution."
end



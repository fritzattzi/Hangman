target = 'Oro'
ungeraten = target
geraten = target.tr(ungeraten,'_')
while geraten != target do
	char = gets[0]
	ungeraten = ungeraten.tr(char, '')
	geraten = target.tr(ungeraten, '_')
	puts geraten
end
puts 'Awesome'
#a.tr('zielwort - bereits eingegebene Buchstaben', '_')
#while 
#target zusammen != input
#get zeichen
#lookup alle vorkommen von zeichen position in target
#write zeichen in output an stelle wo zeichen in target steht
#puts 'Hello World!'



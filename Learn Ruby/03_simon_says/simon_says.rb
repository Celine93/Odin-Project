def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, times = 2)
	((string + " ") * (times - 1)) + string
end

def start_of_word(word, letters)
	word[0, letters]
end

def first_word(sentence)
	sentence.split(' ')[0]
end

#wist ik niet zelf
def titleize(title)
	words = title.split(' ')
	words.map do |word|
		word.capitalize! unless ['and', 'or', 'in', 'the', 'of', 'is', 'a', 'over'].include? (word)
	end
	words[0].capitalize!
	words.join(" ")
end
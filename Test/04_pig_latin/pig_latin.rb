def translate(word)
	vowels = ['a', 'e', 'i', 'o', 'u']
	words = word.split(' ')
	pig = ""
	words.each do |word|
		i = 0
		if (vowels.include? word[0])
			i += 0
		elsif word[0,2] == "qu"
			i += 2
		else
			if (vowels.include? word[1])
				i += 1
			elsif (vowels.include? word[2])
				if (word[1,2] == "qu")
					i += 1
				end
				i += 2
			else
				i += 3
			end
		end
		pig = [pig, word[i,word.length] + word[0,i] + "ay"].join(" ").strip
	end
	pig
end
class Book
	attr_accessor :title

	def title
		klein = ['the', 'and', 'in', 'of', 'a', 'an']
		string = @title.split.each do |word|
			if (klein.include? word)
				word.downcase!
			else
				word.capitalize!
			end
		end
		string[0].capitalize!
		string.join(" ")
	end
end
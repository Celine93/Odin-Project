def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(summ)
	sum = 0
	summ.each do |n|
		sum += n
	end
	sum
end

def multiply(num)
	result = 0
	num.each do |n|
		result *= n
	end
	result
end

def power(a, b)
	a ** b
end

#deze heb ik afgekeken
def factorial(num)
	fact = 1
	num.times do |i|
		fact *= i + 1
	end
	fact
end
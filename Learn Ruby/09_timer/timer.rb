
class Timer
	attr_accessor :seconds
	
	def seconds(secs=0)
		@seconds = secs
	end

	def time_string
		Time.at(@seconds).utc.strftime("%H:%M:%S")
	end

end
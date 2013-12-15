class Cell
	def initialize
		@alive = true
		@die = true
		@born = true
	end

	def num_of_living(num)
		if num == 2 || 3
			@alive = true
		elsif num == 1 || 4
			@die = true
		elsif num == 3
			@born = true	
		end			
	end

	def alive?
		@alive
	end

	def die?
		@die
	end

	def born?
		@born
	end
end
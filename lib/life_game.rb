class Cell
	def initialize
		@alive = true
		@dead = true
		@born = true
	end

	def num_of_living(num)
		if num == 2 || 3
			@alive = true
		elsif num == 1 || 4
			@dead = true
		elsif num == 3
			@born = true	
		end			
	end

	def alive?
		@alive
	end

	def dead?
		@dead
	end

	def born?
		@born
	end
end
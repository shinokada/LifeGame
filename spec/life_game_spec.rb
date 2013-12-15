require 'life_game'

describe Cell do
	before do
		@cell = Cell.new
	end

	it 'Survive when the nucleus has two cells' do
		@cell.num_of_living(2)
		@cell.alive?
		expect(@cell.alive?).to eq true
	end

	it 'Survive when the nucleus has three cells' do
		@cell.num_of_living(3)
		@cell.alive?
		expect(@cell.alive?).to eq true
	end

	it 'Die when the nucleus has a cell' do
		@cell.num_of_living(1)
		@cell.die?
		expect(@cell.die?).to eq true
	end

	it 'Die when the nucleus has four cells' do
		@cell.num_of_living(4)
		@cell.die?
		expect(@cell.die?).to eq true
	end

	it 'Be born when there are three cells around' do
		@cell.num_of_living(3)
		@cell.born?
		expect(@cell.born?).to eq true
	end
end
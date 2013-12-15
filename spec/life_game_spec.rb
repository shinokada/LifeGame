require 'life_game'

describe Cell do
	it 'when living cells of two' do
		cell = Cell.new
		cell.num_of_living(2)
		cell.alive?
		expect(cell.alive?).to eq true
	end

	it 'when living cells of three' do
		cell = Cell.new
		cell.num_of_living(3)
		cell.alive?
		expect(cell.alive?).to eq true
	end

	it 'when living cells of one' do
		cell = Cell.new
		cell.num_of_living(1)
		cell.dead?
		expect(cell.dead?).to eq true
	end

	it 'when living cells of one' do
		cell = Cell.new
		cell.num_of_living(4)
		cell.dead?
		expect(cell.dead?).to eq true
	end

	it 'born cells' do
		cell = Cell.new
		cell.num_of_living(3)
		cell.born?
		expect(cell.born?).to eq true
	end
end
require 'cell'

describe Cell do
  
  let(:cell) { Cell.new }

  context 'initialisation' do

    it 'should have a value' do
      expect(cell.value).to eq 0
    end

    it 'should have a list of candidate values' do
      expect(cell.candidates).to eq (1..9).to_a
    end

    it 'should have no neighbours initially' do
      expect(cell.neighbours).to eq []
    end 

  end

  context 'solving a cell' do

    it 'should not be solved initially' do
      expect(cell).not_to be_solved
    end

    it 'can be solved' do
      cell.candidates = [8]
      cell.solve!
      expect(cell).to be_solved
    end

  end

  context 'updating candidates' do

    it 'can update candidate values based on its neighbours' do
      cell_2 = Cell.new(8)
      cell_3 = Cell.new(9)
      cell.neighbours = [cell_2, cell_3]
      cell.update_candidates
      expect(cell.candidates).to eq (1..7).to_a
    end

  end

end
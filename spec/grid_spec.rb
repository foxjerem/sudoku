require 'grid'

describe Grid do
  
  let(:grid) { Grid.new }

  context 'initialisation' do

    it 'should hold a collection of 81 cells' do
      expect(grid.cells.count).to eq 81
    end

    it 'should associate cell with neighbour indices' do
      expect(grid.cells[2].neighbours).to eq [1,2,9,10,11,18,19,20]
    end

  end

  context 'updating cells' do

    it 'can update cells with candidates based on neighbour values' do
      grid.cells[1].value = 9
      grid.update_cells
      expect(grid.cells[0].candidates).to eq (1..8).to_a
    end

  end

end
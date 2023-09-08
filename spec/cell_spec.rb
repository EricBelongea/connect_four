require './lib/cell'

RSpec.describe '#Cell' do 
  before(:each) do
    @cell = Cell.new
  end
  it 'exists' do
    expect(@cell).to be_instance_of Cell
  end

  it 'has a default state' do
    expect(@cell.state).to eq(".")
  end

  it 'can take input from player' do
    @cell.change_state('x')

    expect(@cell.state).to eq('x')
  end
end
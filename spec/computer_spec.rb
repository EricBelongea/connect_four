require './lib/computer'

RSpec.describe '#computer' do
  before(:each) do
    @computer = Computer.new
  end
  it 'exists' do
    expect(@computer).to be_instance_of Computer
  end

  it 'stores attributes' do
    expect(@computer.piece).to eq('o')
  end
end
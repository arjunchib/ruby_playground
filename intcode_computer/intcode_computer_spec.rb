require_relative 'intcode_computer'
describe IntcodeComputer do 
  let(:computer) { IntcodeComputer.new }

  describe 'process' do
    it 'can solve the examples' do
      expect(computer.process('1,1,1,4,99,5,6,0,99').to eq [30,1,1,4,2,5,6,0,99]
    end
  end

end


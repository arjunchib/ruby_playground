require_relative 'fuel_computer'

describe FuelComputer do
  let(:computer) { FuelComputer.new(mass) }

  describe '#mass' do
    subject { computer.fuel }
    context 'for small numbers' do
      let(:mass) { 2 }
    
      it 'is not less than 0' do
        expect(subject).to eq 0
      end
    end

    context 'for bigger numbers' do
      let(:mass) { 1969 }

      it 'computes the correct fuel numbers' do
        expect(subject).to eq 966
      end
    end
  end
end


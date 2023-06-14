require 'multiples3and5'

describe Multiples do

  describe '#run' do
    subject(:multiples) {described_class}
    let(:run) {multiples.run(start_number, end_number)}
    let(:start_number) {-10}
    let(:end_number) {10}
    it 'will return the sum of all multiples of three and five within the range' do
      expect(run).to eq(-10)
    end

    context 'when start number is greater than end number' do
      let(:start_number) {20}
      it 'raises InvalidNumbersError' do
        expect{ run }.to raise_error(Multiples::InvalidNumbersError)
      end
    end

  end

end
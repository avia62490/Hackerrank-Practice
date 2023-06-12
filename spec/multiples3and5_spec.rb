require 'multiples3and5'

describe Multiples do
  describe '#run' do
    subject(:multiples) {described_class}
    let(:run) {multiples.run(number)}
    let(:number) {1000}
    it 'will return the sum of all multiples of three and five within the range' do
      expect(run).to eq(233168)
    end
  end
end
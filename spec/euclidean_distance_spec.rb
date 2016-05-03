require './euclidean.rb'
RSpec.describe EuclideanDistance do
  let(:limerick) { [52.661418, -8.550537] }
  let(:dublin)   { [53.318387, -6.368181] }

  describe '#calculate' do
    subject { EuclideanDistance.new(limerick, dublin) }
    it 'calculates euclidean distance between two points' do
      expect(subject.calculate).to eq 2.279097623555649
    end
  end
end

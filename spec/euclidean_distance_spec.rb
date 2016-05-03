require './euclidean.rb'
RSpec.describe EuclideanDistance do
  let(:limerick) { [52.661418, -8.550537] }
  let(:dublin)   { [53.318387, -6.368181] }
  # cork      = [51.901063, -8.472533]
  # galway    = [53.275008, -9.049125]
  it 'calculates euclidean distance between two points' do
    expect(EuclideanDistance.new(limerick, dublin).calculate).to eq 2.279097623555649
  end
end

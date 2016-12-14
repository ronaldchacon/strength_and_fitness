RSpec.describe Paginator do
  let(:bench_press) { create(:bench_press) }
  let(:squat) { create(:squat) }
  let(:deadlift) { create(:deadlift) }

  let(:exercises) { [bench_press, squat, deadlift] }

  let(:scope) { Exercise.all }
  let(:params) { { 'page' => '1', 'per' => '2' } }
  let(:paginator) { Paginator.new(scope, params, 'url') }
  let(:paginated) { paginator.paginate }

  before { exercises }

  describe '#paginate' do
    it 'paginates the collection with 2 exercises' do
      expect(paginated.size).to eq 2
    end

    it 'contains bench_press as the first paginated item' do
      expect(paginated.first).to eq bench_press
    end

    it 'contains squat as the last paginated item' do
      expect(paginated.last).to eq squat
    end
  end
end

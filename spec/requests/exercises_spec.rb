RSpec.describe 'Exercises', type: :request do
  let(:bench_press) { create(:bench_press) }
  let(:squat) { create(:squat) }
  let(:deadlift) { create(:deadlift) }

  let(:exercises) { [bench_press, squat, deadlift] }

  describe 'GET /api/exercises' do
    before { exercises }

    context 'default behavior' do
      before { get '/api/exercises' }

      it 'receives HTTP status 200' do
        expect(response.status).to eq 200
      end

      it 'receives a json with the "data" root key' do
        expect(json_body['data']).to_not be nil
      end

      it 'receives all 3 exercises' do
        expect(json_body['data'].size).to eq 3
      end
    end
  end
end

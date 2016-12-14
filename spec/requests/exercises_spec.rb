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

    describe 'pagination' do
      context 'when asking for the first page' do
        before { get '/api/exercises?page[number]=1&page[size]=2' }

        it 'receives HTTP status 200' do
          expect(response.status).to eq 200
        end

        it 'receives only two exercises' do
          expect(json_body['data'].size).to eq 2
        end
      end

      context 'when asking for the second page' do
        before { get '/api/exercises?page[number]=2&page[size]=2' }

        it 'receives HTTP status 200' do
          expect(response.status).to eq 200
        end

        it 'receives only one exercise' do
          expect(json_body['data'].size).to eq 1
        end
      end

      context "when sending invalid 'page[number]' and 'page[size]' params" do
        before { get('/api/exercises?page[number]=fake&page[size]=10') }

        it 'receives HTTP status 400' do
          expect(response.status).to eq 400
        end

        it 'receives an error' do
          expect(json_body['error']).to_not be nil
        end

        it "receives 'page[number]=fake' as an invalid param" do
          expect(json_body['error']['invalid_params']).to eq 'number=fake'
        end
      end
    end
  end
end

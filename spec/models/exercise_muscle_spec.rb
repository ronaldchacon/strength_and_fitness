RSpec.describe ExerciseMuscle, type: :model do
  it { should validate_presence_of(:exercise_id) }
  it { should validate_presence_of(:muscle_id) }

  it 'has a valid factory' do
    expect(build(:exercise_muscle)).to be_valid
  end
end

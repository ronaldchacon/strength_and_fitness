RSpec.describe ExerciseExerciseType, type: :model do
  it { should validate_presence_of(:exercise_id) }
  it { should validate_presence_of(:exercise_type_id) }

  it 'has a valid factory' do
    expect(build(:exercise_exercise_type)).to be_valid
  end
end

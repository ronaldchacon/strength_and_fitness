RSpec.describe ExerciseType, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:exercise_exercise_types) }
  it { should have_many(:exercises).through(:exercise_exercise_types) }

  it 'has a valid factory' do
    expect(build(:exercise_type)).to be_valid
  end
end

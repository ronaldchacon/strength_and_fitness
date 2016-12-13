RSpec.describe ExerciseType, type: :model do
  it { should validate_presence_of(:name) }

  it 'has a valid factory' do
    expect(build(:exercise_type)).to be_valid
  end
end

RSpec.describe Exercise, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:exercise_muscles) }
  it { should have_many(:muscles).through(:exercise_muscles) }
  it { should have_many(:exercise_exercise_types) }
  it { should have_many(:exercise_types).through(:exercise_exercise_types) }

  it 'has a valid factory' do
    expect(build(:exercise)).to be_valid
  end
end

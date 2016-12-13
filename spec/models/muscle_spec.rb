RSpec.describe Muscle, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:exercise_muscles) }
  it { should have_many(:exercises).through(:exercise_muscles) }

  it 'has a valid factory' do
    expect(build(:muscle)).to be_valid
  end
end

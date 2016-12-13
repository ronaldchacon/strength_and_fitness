RSpec.describe Muscle, type: :model do
  it { should validate_presence_of(:name) }

  it 'has a valid factory' do
    expect(build(:muscle)).to be_valid
  end
end
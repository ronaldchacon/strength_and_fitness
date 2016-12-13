RSpec.describe Exercise, type: :model do
  it { should validate_presence_of(:name) }

  it 'has a valid factory' do
    expect(build(:exercise)).to be_valid
  end
end

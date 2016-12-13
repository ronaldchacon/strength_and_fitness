RSpec.describe Equipment, type: :model do
  it { should validate_presence_of(:name) }

  it 'has a valid factory' do
    expect(build(:equipment)).to be_valid
  end
end

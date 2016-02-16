describe User, type: :model do
  it 'has a valid user' do
    expect(FactoryGirl.create(:user)).to be_valid
  end
end

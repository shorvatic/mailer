require 'rails_helper'
# require './lib/tasks/required_records'

# => describe all actions of a user, using Rspec
describe UsersController, type: :controller do
  describe 'User' do
    context 'Making Account' do
      it 'Make user sucessfuly' do
        mail_count = ActionMailer::Base.deliveries.count # => get current email count
        get :create, user: { name: 'jo', email: 'noreplay@multiad.com' }
        expect(ActionMailer::Base.deliveries.count).to eq(mail_count + 1) # => Check if email has been sent
      end
    end
  end
end

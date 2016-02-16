require 'spec_helper'

describe UserMailer, type: :mailer do
  describe 'instructions' do
    let(:user) { mock_model User, name: 'Lucas', email: 'lucas@email.com' }
    let(:mail) { UserMailer.welcome_email(user) }

    it 'renders the subject' do
      expect(mail.subject).to eql('Welcome to My Awesome Site')
    end

    it 'renders the receiver email' do
      expect(mail.to).to eql([user.email])
    end

    it 'renders the sender email' do
      expect(mail.from).to eql(['noreplay@multiad.com'])
    end

    it 'assigns @name' do
      expect(mail.body.encoded).to match(user.name)
      puts mail.body.encoded
    end
  end
end

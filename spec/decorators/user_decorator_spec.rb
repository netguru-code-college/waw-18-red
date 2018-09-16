require 'rails_helper'

RSpec.describe UserDecorator do
  describe '#username' do
    context 'first_name and last_name is present' do
      let!(:user) do 
        User.create!({email: 'qwe@qwe.qwe', password: 'Qwert123', first_name: 'Robert', last_name: 'Kusmirek' })
      end
      subject { user.decorate.username }

      it { is_expected.to eq("Hello Robert Kusmirek") }
    end

    context 'first_name and last_name is not present' do
      let!(:user) { User.create!({email: 'qwe@qwe.qwe', password: 'Qwert123'}) }
      subject { user.decorate.username }

      it { is_expected.to eq("Hello qwe@qwe.qwe") }
    end
  end
end
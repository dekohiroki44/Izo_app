require 'rails_helper'

RSpec.describe "lives_interface", type: :system do
  let(:user) { create(:user) }
  let(:live) { build(:live) }

  before do
    visit new_user_session_path
    fill_in 'Eメール', with: user.email
    fill_in 'パスワード', with: user.password
    click_button 'ログイン'
    visit new_life_path
  end

  it 'create live' do
    expect { click_button '投稿する' }.to change(Live, :count)
  end
end

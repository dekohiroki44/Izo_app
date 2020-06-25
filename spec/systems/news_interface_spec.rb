require 'rails_helper'

RSpec.describe "news_interface", type: :system do
  let(:user) { create(:user) }
  let(:post) { build(:post) }

  before do
    visit new_user_session_path
    fill_in 'Eメール', with: user.email
    fill_in 'パスワード', with: user.password
    click_button 'ログイン'
    visit new_post_path
  end

  it 'create news' do
    expect { click_button '投稿する' }.to change(Post, :count)
  end
end
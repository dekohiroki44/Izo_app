require 'rails_helper'

RSpec.describe "lives_interface", type: :system, js: true do
  let(:user) { create(:user) }
  let(:live) { create(:live) }

  before do
    visit new_user_session_path
    fill_in 'Eメール', with: user.email
    fill_in 'パスワード', with: user.password
    click_button 'ログイン'
  end

  it 'creates live' do
    visit new_life_path
    expect { click_button '投稿する' }.to change(Live, :count)
  end

  it 'edits live' do
    visit edit_life_path(live.id)
    fill_in '場所', with: 'livehouse'
    click_button '編集する'
    expect(live.reload.place).to eq 'livehouse'
  end

  it 'deletes live' do
    visit edit_life_path(live.id)
    expect do
      page.accept_confirm do
        click_link '削除する'
      end
      sleep 1
    end.to change(Live, :count).by(-1)
  end
end

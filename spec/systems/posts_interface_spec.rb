require 'rails_helper'

RSpec.describe "posts_interface", type: :system, js: true do
  let(:user) { create(:user) }
  let(:post) { create(:post) }

  before do
    visit new_user_session_path
    fill_in 'Eメール', with: user.email
    fill_in 'パスワード', with: user.password
    click_button 'ログイン'
  end

  it 'creates post' do
    visit new_post_path
    expect { click_button '投稿する' }.to change(Post, :count)
  end

  it 'edits post' do
    visit edit_post_path(post.id)
    fill_in 'タイトル', with: 'news'
    click_button '編集する'
    expect(post.reload.title).to eq 'news'
  end

  it 'deletes post' do
    visit edit_post_path(post.id)
    expect do
      page.accept_confirm do
        click_link '削除する'
      end
      sleep 1
    end.to change(Post, :count).by(-1)
  end
end

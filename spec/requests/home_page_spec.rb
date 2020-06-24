require 'rails_helper'

RSpec.describe "home_page", type: :request do
  let!(:live) { build(:live) }
  let!(:post) { build(:post) }

  before do
    get root_path
  end

  it 'shows link' do
    expect(page).to have_link 'Izo Official Web Site', href: root_path
  end
end

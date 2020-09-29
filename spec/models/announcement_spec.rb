require 'rails_helper'

RSpec.describe Announcement, type: :model do
  let!(:announcement) { build(:announcement) }

  it 'is valid with no imput' do
    expect(announcement).to be_valid
  end
end

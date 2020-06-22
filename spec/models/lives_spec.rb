require 'rails_helper'

RSpec.describe Live, type: :model do
  let!(:live) { build(:live) }

  it 'is valid with no imput' do
    expect(live).to be_valid
  end
end

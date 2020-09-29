require 'rails_helper'

RSpec.describe OneWord, type: :model do
  let!(:one_word) { build(:one_word) }

  it 'is valid with no imput' do
    expect(one_word).to be_valid
  end
end

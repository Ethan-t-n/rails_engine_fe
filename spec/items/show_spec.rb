require 'rails_helper'

RSpec.describe 'Item Show' do
  it 'has item attributes', vcr: 'item1' do
    visit item_path(99)
    expect(page).to have_link('Item Inventore Omnis')
      expect(page).to have_content('Price: 390.58')
      expect(page).to have_content('Description: Consectetur ut deleniti.')
  end
end
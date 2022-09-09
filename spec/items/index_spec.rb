require 'rails_helper'

RSpec.describe 'Items Index' do
  it 'lists items names as links to show', vcr: 'items4' do
    visit items_path
    within '#item-99' do
      expect(page).to have_link('Item Inventore Omnis')
      expect(page).to have_content('Price: 390.58')
      expect(page).to have_content('Description: Consectetur ut deleniti.')

      click_link 'Item Inventore Omnis'
      expect(current_path).to eq(item_path(99))
    end
  end
end
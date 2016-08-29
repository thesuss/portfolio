require 'spec_helper'
require 'capybara'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'says hello to visitor' do
    expect(page).to have_content 'Middleman'
  end

  it 'renders footer partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'My Portfolio'
      expect(page).to have_content 'Built using the awesome Middleman framework'
    end
  end

end

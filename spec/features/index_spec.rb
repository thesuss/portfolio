require 'spec_helper'
require 'capybara'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'says hello to visitor' do
    expect(page).to have_content 'Middleman'
  end

end

require 'rspec'
require 'spec_helper'
require 'capybara'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'says welcome to visitor' do
    expect(page).to have_content 'Welcome to my portfolio'
  end

  it 'has link to projects' do
    expect(page).to have_link("See them »", href: '/projects.html')
  end

  it 'renders footer partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'My Portfolio'
      expect(page).to have_content 'Built using the awesome Middleman framework'
    end
  end

end

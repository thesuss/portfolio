require 'rspec'
require 'spec_helper'
require 'capybara'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'says who I am' do
    expect(page).to have_content 'MY NAME IS SUSANNA'
  end

  it 'has link to projects' do
    expect(page).to have_link("View projects »", href: 'projects.html')
  end

  it 'renders footer partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'My Portfolio'
      expect(page).to have_content 'Built using the awesome Middleman framework'
    end
  end

end

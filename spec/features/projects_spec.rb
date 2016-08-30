require 'rspec'
require 'spec_helper'
require 'capybara'

describe 'projects', type: :feature do

    before do
      visit '/projects.html'
    end

  it 'displays project list' do
    expect(page).to have_css '.project-list'
    within '.project-list' do
      expect(page).to have_content 'My First Website'
      expect(page).to have_content 'FizzBuzz'
    end
  end

  it 'displays an image by at least one project' do
    expect(page).to have_css("img[src*='proj']")
  end



end

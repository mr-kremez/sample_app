require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('Home')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title(full_title('About')) }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contacts') }
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

  it 'should have the right links on the layout' do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "sample app"
    expect(page).to have_title(full_title('Home'))
  end
end
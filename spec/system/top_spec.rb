require 'rails_helper'

feature "top test", type: :system, js: true do
  scenario "rootにアクセスできること" do
    visit root_path
    expect(current_path).to eq root_path
  end

  scenario "aboutにアクセスできること" do
    visit top_about_path
    expect(current_path).to eq top_about_path
  end
end

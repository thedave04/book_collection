require 'rails_helper'

RSpec.describe 'Seed Data Presence', type: :feature do
  scenario 'Check that seed data for UserBook exists' do
    visit user_books_path

    expect(page).to have_text('The Hobbit')
    expect(page).to have_text('davida')
  end
end

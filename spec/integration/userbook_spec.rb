require 'rails_helper'

RSpec.describe 'Seed Data Presence', type: :feature do
  let(:admin) do
    Admin.create!(
      email: 'test@example.com',
      full_name: 'Test User',
      uid: '1234567890'
    )
  end

  before do
    login_as(admin, scope: :admin)
  end

  scenario 'Check that seed data for UserBook exists' do
    visit user_books_path

    expect(page).to have_text('The Hobbit')
    expect(page).to have_text('davida')
  end
end

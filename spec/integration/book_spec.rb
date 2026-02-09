require 'rails_helper'

RSpec.describe 'Create Book', type: :feature do
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

  scenario 'User creates a new book with valid data' do
    visit new_book_path

    fill_in 'Title', with: "Harry Potter and the Sorcerer's Stone"
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '19.99'
    select '1997', from: 'book_published_date_1i'
    select 'June', from: 'book_published_date_2i'
    select '26', from: 'book_published_date_3i'
    click_button 'Create Book'

    expect(page).to have_text('Book was successfully created.')
    expect(page).to have_text("Harry Potter and the Sorcerer's Stone")
  end

  scenario 'User attempts to create a new book with invalid title' do
    visit new_book_path

    fill_in 'Title', with: ''
    click_button 'Create Book'

    expect(page).to have_text("Title can't be blank")
  end

  scenario 'User attempts to create a new book with invalid author' do
    visit new_book_path

    fill_in 'Author', with: ''
    click_button 'Create Book'

    expect(page).to have_text("Author can't be blank")
  end

  scenario 'User attempts to create a new book with invalid price' do
    visit new_book_path

    fill_in 'Price', with: ''
    click_button 'Create Book'

    expect(page).to have_text("Price can't be blank")
  end

  scenario 'User attempts to create a new book with invalid published_date' do
    visit new_book_path

    select '', from: 'book_published_date_1i'
    select '', from: 'book_published_date_2i'
    select '', from: 'book_published_date_3i'
    click_button 'Create Book'

    expect(page).to have_text("Published date can't be blank")
  end
end

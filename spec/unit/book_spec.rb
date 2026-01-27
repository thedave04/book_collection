require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    Book.new(title: "Harry Potter and the Sorcerer's Stone", author: 'J.K. Rowling', price: 19.99, published_date: '1997-06-26')
  end

  it 'example with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is invalid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is invalid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is invalid without a published_date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end

User.create!([
  { username: "marble" },
  { username: "davida" },
  { username: "junior" },
  { username: "mixie" }
])
Book.create!([
  { title: "Harry Potter", author: "J.K Rowling", price: "10.99", published_date: "1997-06-26" },
  { title: "Percy Jackson", author: "Rick Riordan", price: "9.99", published_date: "2005-06-28" },
  { title: "The Hobbit", author: "J.R.R Tolkien", price: "12.99", published_date: "1937-09-21" },
  { title: "1984", author: "George Orwell", price: "8.99", published_date: "1949-06-08" }
])
UserBook.create!([
  { user_id: 3, book_id: 1 },
  { user_id: 2, book_id: 3 },
  { user_id: 4, book_id: 3 },
  { user_id: 2, book_id: 1 },
  { user_id: 1, book_id: 4 },
  { user_id: 4, book_id: 2 }
])

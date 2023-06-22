json.extract! book, :id, :title, :author, :genre, :year_of_publication, :created_at, :updated_at
json.url book_url(book, format: :json)

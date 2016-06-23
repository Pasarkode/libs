json.array!(@books) do |book|
  json.extract! book, :id, :title, :description, :year, :author, :publisher, :pages
  json.url book_url(book, format: :json)
end

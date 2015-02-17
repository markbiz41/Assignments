json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :copyright_date, :story_contents, :user_reviews
  json.url book_url(book, format: :json)
end

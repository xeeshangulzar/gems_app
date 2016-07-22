json.array!(@articles) do |article|
  json.extract! article, :id, :name, :slug
  json.url article_url(article, format: :json)
end

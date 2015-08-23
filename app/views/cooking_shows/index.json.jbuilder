json.array!(@cooking_shows) do |cooking_show|
  json.extract! cooking_show, :id, :name, :country, :description, :years, :picture
  json.url cooking_show_url(cooking_show, format: :json)
end

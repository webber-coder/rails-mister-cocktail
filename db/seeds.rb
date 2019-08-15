require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredients = JSON.parse(user_serialized)
ingredients["drinks"].each do |ing|
  ing.each do |key, value|
   Ingredient.create!(name: value)
 end
end

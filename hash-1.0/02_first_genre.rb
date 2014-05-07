require_relative 'people'

# What is the first genre that each person listed?
PEOPLE.each do |person, data|
  p data[:preferences][:favorite_genres].first
end

require_relative 'people'

# What are the last names of all of the people?
PEOPLE.each do |person, data|
  p data[:last_name]
end

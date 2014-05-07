require_relative 'people'

# What was the date of the first correspondence with joe?

p PEOPLE['joe'][:correspondence].first[:date]

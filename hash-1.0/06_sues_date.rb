require_relative 'people'

# What was the description of the last correspondence with sue?
p PEOPLE['sue'][:correspondence].last[:description]

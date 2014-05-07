require_relative 'data'

# write code that will return an array of strings in the format "First Last (Title) - started m/d/yyyy"

EMPLOYEES.each do |employee|
  first = employee[:first_name]
  last = employee[:last_name]
  title = employee[:title]
  start_date = employee[:start_date]
  p "#{first} #{last} (#{title}) - started #{start_date.strftime('%D')}"
end

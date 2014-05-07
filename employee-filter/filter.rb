require_relative 'data'

# write code that will return an array of employees who started before 2006

EMPLOYEES.each do |employee|
  p employee if employee[:start_date] < Date.new(2006, 1, 1)
end

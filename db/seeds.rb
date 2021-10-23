require "rest-client"

url = "https://coding-assignment.g2crowd.com/"
response = RestClient.get(url)
employees = JSON.parse(response)

for employee in employees do 
    Employee.create(employee)
end
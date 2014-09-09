require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  students << name
  # TODO: Add the name we just gotto the students array

end while name != ""

students.pop

# TODO: Call `wagon_sort` method and display the sorted student list
puts "Congratulations! Your Wagon has #{students.length} students:"
students = wagon_sort(students)

response = ''
students.each_with_index do |student,index|
	if index == 0
		response += "- " + student
	elsif index == students.size - 1
		response += " and " + student
	else 
		response += ", " + student 
	end
	student
end

puts response
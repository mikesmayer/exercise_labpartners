puts "Hi, let me help you create groups for your class"

puts "How many students should be in each group?"

groupsize = gets.chomp.to_i

# groupsize = 3

students = ["Alan Appelstein", "Alice Mottola", "Alina Guzman", "andrew silbersmith", "Anuj Jhunjhunwala", "Ben Israeli",
  "Beryl Schragger", "Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes",
  "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger", "Nick Lombardi",
  "Phillip Lamplugh", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Dougals", "Wesley Carr", "Zachariah Reitano"]

subgroups = students.sort_by{rand}.each_slice(groupsize).to_a

if students.length % groupsize != 0
  lizard = subgroups[-2].concat(subgroups[-1])
else print subgroups
end

subgroups.pop(2)
subgroups.push(lizard)

# print subgroups

subgroups.each do |x|
  puts "here's a group of students #{x}"
end
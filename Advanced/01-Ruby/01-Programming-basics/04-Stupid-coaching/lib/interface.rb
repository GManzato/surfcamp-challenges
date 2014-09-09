require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

response = ""

until response.chomp == "I am going to work right now SIR !"
	response = gets.chomp	
	puts coach_answer(response)
end

require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  [*('A'..'Z'),*('A'..'Z')].sample(grid_size)
end

def in_the_grid?(attempt,grid)
	#grid.all? {|letter| attempt.include? letter.upcase }
	attempt.split('').all? {|letter| grid.include? letter.upcase}
end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result



  result = {
  	message: "",
  	translation: nil,
  	time:end_time-start_time,
  	score:0
  }
  if in_the_grid?(attempt,grid)
	  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/" + attempt
		open(api_url) do |stream| 
		  response = JSON.parse(stream.read)
		  if response['Error']
		  	result[:message] = "not an english word"
			else 
				result[:translation] = response['term0']['PrincipalTranslations']['0']['FirstTranslation']['term']
				result[:score] = attempt.size/result[:time]
				result[:message] = "well done"
			end
		end
	else
		result[:message] = "not in the grid"
	end

	result
end

require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  #('a'..'z').to_a.sample(grid_size)
  [*('a'..'z'),*('a'..'z')].sample(grid_size)
end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/" + attempt
	open(api_url) do |stream| 
	  response = JSON.parse(stream.read)
	  if response['Error']
	  	message = "Mot invalide"
		else 
			puts response['term0']['PrincipalTranslations']['0']['FirstTranslation']['term']
		end
	  
	  #puts response['term0']['PrincipalTranslations'][0]['FirstTranslation']
	end
end

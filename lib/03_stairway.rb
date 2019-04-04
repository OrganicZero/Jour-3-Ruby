$turns = 0

def current_game
	step = 0

	puts "Bonjour et bienvenue au jeu!"

	while step < 10
		dice = rand(1..6)
		puts "la valeur du dé est #{dice}"
		$turns += 1
		case
		when dice == 1 
			if step != 0
				step -= 1
				puts "Tu as reculé d'une marche, tu es à la marche #{step}/10."
			else
				puts "Tu restes sur la même marche, tu es à la marche #{step}/10."
				end
		when dice == 2 || dice == 3 || dice == 4
			puts "Tu reste sur cette marche, tu es à la marche #{step}/10."
		when dice == 5 || dice == 6
			step +=1
			puts "Tu as avancé d'une marche, tu es à la marche #{step}/10."
		end
	end

	if step == 10
		puts "tu as gagné en #{$turns} tours."
	end
end

def average_finish_time(turns)
	games = 0
	100.times do current_game
	games += 1
	end
	puts "les #{games} parties sont effectuées, il y a #{$turns/100} jets de dés en moyenne par tour."
end

average_finish_time(current_game)

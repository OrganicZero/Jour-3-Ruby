def signup
	puts 'Entrez votre mot de passe:'
	print '> '
	password = gets.chomp
	return password
end

def login(password)
	verif = ''
	while verif != password
		puts 'Vérifiez votre mot de passe:'
		print '> '
		verif = gets.chomp
	end
	welcome_screen()
end

def welcome_screen
	puts "LE PLUS GROS SECRET DE L'UNIVERS: ON EST TON PERE"
end

def perform
	login(signup)
end

perform

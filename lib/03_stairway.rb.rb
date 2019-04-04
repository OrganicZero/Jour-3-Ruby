class Claas
 attr_accessor :jeanmichel, :turn, :tourdejeu
  @@turn = 0

 def initialize
   @jeanmichel = 0
	 @moyenne = 0
	 @tourdejeu = 0
 end

 def dé
   @@turn += 1
   self.tourdejeu += 1
   x = rand(1...7)
   puts " le lancer de dé donne un #{x}"
   if x == 1
     reculer
   elsif x < 5
     puts "il ne se passe rien"
     info
   elsif x >= 5  
     avancer
   end
 end
 
 def avancer
   puts "jeanmichel monte de 1 etage"
   self.jeanmichel += 1
   info
 end

 def reculer
   if self.jeanmichel > 0
     self.jeanmichel -= 1
     puts "jeanmichel descend d'un etage "
     info
   elsif self.jeanmichel == 0
     puts " jeanmich peut pas descendre plus bas"
     info
   end
 end

 def info
   puts "jean-michel se trouve a l'etage #{self.jeanmichel}"
   if self.jeanmichel == 10
     puts "jeanmichel a gagner en #{@tourdejeu} tour"
     winner
   else dé
   end
 end

 def winner
   puts "gagner "
   puts "total de tours #{@@turn}"
   @moyenne = @@turn / 2 
	puts @moyenne
 end
end

jeu = Claas.new
100.times do
puts "le jeu commence jeanmichel a l'etage zero "


 Claas.new.dé
end

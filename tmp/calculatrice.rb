puts "Calculatrice"
puts "============"

def calc(value_one, value_two)
	loop do
		puts "Entrer une première valeur"
		print "> "
		value_one = gets.chomp
		break if value_one == ""
		puts "Entrer une deuxieme valeur"
		print "> "
		value_two = gets.chomp

		# Get operator
		operator = gets.chomp

		# Operation
		soustraction = value_one.to_i - value_two.to_i
		multiply = value_one.to_i * value_two.to_i
		divide = value_one.to_f / value_two.to_f
		sum = value_one.to_i + value_two.to_i

		# Result
		return "Le résultat est : #{sum}" if operator.include? "+"
		return "Le resultat est : #{multiply}" if operator.include? "*"
		return "Le resultat est : #{divide}" if operator.include? "/"
		return "Le resultat est : #{soustraction}" if operator.include? "-"
	end	
end
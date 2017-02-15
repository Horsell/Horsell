# afficher action
# si Action faire quelque chose.
# a la fin redemander action si necessaire.

# Action : Add, Delete, List, Mark

puts "Christmas list"
puts "=============="

puts "Que souhaitez vous faire ? ('add', 'delete', 'list', 'mark')"
print "> : "

todolist = [
	{
	item: "maison",
	status: "acheter" 
},
	{
		item: "voiture",
		status: "acheter"
	}
]

choice_user = gets.chomp
puts choice_user

# choice user
if choice_user == "add"
	while choice_user != "no"
		puts "Nom de l'article :"
		print "> : "
		item = gets.chomp
		puts "(acheter : 1 ; non acheter : 2)"
		print "> :"
		status = gets.chomp.to_i
		if status == 1
			status = "Acheter"
		else
			status = "A acheter"
		end
		todolist  << {item: item, status: status}
		puts "Article ajouté !"
		puts todolist
		print "continuer ? > : "
		choice_user = gets.chomp
	end

elsif choice_user == "delete"
	while choice_user != "n"
	puts todolist
	puts "Quel article souhaitez-vous supprimer ?"

	todolist.each_with_index { |status, index| puts "#{index} #{status[:item]}" }
	delete_article = gets.chomp.to_i
	todolist.delete_at(delete_article)
	puts "Article supprimé"
	print "Supprimer des articles supplementaire ? (y/n)"
	print "> :"
	choice_user = gets.chomp
	end

elsif choice_user == "list"
	puts "Voici la liste des articles."
	puts todolist # essyer de rajouter une boucle pour redemander le choix de l'utilisateur.
elsif choice_user == "mark"
	todolist.each_with_index { |status, index| puts "#{index} #{status[:item]}" }
	puts "Quel article vous souhaitez marquer comme acheter."
	print "> : "
	#choix de l'index de l'element a marker
	mark_index = gets.chomp.to_i
	buy = gets.chomp	
	todolist.each_with_index do |hashs, index| 	
	hashs[:status] = buy if index == mark_index
	puts todolist
	end
end



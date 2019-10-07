def echo(string)
	return string
end


# ----------------------------------------------------------------

def shout(string)
	return string.upcase
end


# ----------------------------------------------------------------

def repeat(string, times = 2) # Le paramètre times est optionnel et sa valeur par défaut est 2.
	return (string + " ") * (times - 1) + string
end


# ----------------------------------------------------------------

def start_of_word(string, number)

	# On transforme la chaine de caractères en un tableau dont chaque élément est une lettre
	tableau = string.split("")
	#
	return tableau[0..number-1].join("")
end

#def start_of_word(mot,a) #le a est le nombre de lettre
#	if a != 0
#		a-= 1
#		return mot[0..a]
#	else
#   	return mot[0..a]
# 	end
#end


# ----------------------------------------------------------------

def first_word(string)
	tableau = string.split(" ")
	return tableau[0]

end


# ----------------------------------------------------------------

def titleize(string)

	# On définit une liste des mots dont il ne faut pas mettre la première lettre en majuscule.
	words_not_to_capitalize = ["the", "and"]

	# On sépare chaque mot de la chaîne de caractère en utilisant la méthode split(" "). La méthode split renvoie un tableau dont chaque élément est un des mots de la phrase. 
	# Si les mots ne sont pas compris dans la liste word_not_to_capitalize, leur première lettre est transformée en majuscule. Sinon, ils restent inchangés.
	phrase = string.split(" ").map{|word|
		if words_not_to_capitalize.include?(word)
			word = word
		else
			word = word.capitalize
		end
	}

	# On retourne le premier mot ("the") avec la première lettre en majuscule et les mots suivants déjà sous la bonne forme en utilisant la méthode join(" ")
	return phrase[0].capitalize + " " + phrase[1..-1].join(" ")
end


puts titleize("jaws")
puts titleize("david cop")
puts titleize("the bridge over the river kwai")

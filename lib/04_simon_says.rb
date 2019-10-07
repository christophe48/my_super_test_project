def echo(mot)
 return mot
end

def shout(mot)
  return mot.upcase
end

def repeat(mot,a=2)
   return (mot + " ") * (a - 1) + mot
end
#puts repeat("hello",2)

#start of word: 2 façons
#def start_of_word(mot,a) #le a est le nombre de lettre
 #if a != 0
  #  a-= 1
   #return mot[0..a]
 #else
#   return mot[0..a]
# end
#end
#puts start_of_word("salut",2)

def start_of_word(mot,a)
  tableau = mot.split("")
return tableau[0..a-1].join("")
end
#puts start_of_word("salut",3)

def first_word(string)
  phrase = string.split(" ") #split coupera par défault la phrase a chaque espace
  return phrase[0]
end

def titleize(phrase)
  phrase.split.map(&:capitalize).join(" ")
end

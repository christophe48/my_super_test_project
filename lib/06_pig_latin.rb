def translate(string)
	voyel = ['a','e','i','o','u','y']
	i = 0
	j = 0
	nouveauTabl = ""

	while i < string.length
		while j < voyel.length
			if voyel[j] == string[i]
				nouveauTabl += string + "ay"
			else
				nouveauTabl = string.delete(string[i]) + string[i] + "ay"
			end
			j+=1
		end
		i+=1
	end
	return nouveauTabl
end


puts translate("apple")
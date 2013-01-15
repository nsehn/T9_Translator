def possible_words(numbers)

	h = {"1" => [" "], "2"  => ["a", "b", "c"], "3"  => ["d", "e", "f"], "4"  => ["g", "h", "i"], "5"  => ["j", "k", "l"], "6"  => ["m", "n", "o"], "7"  => ["p", "q", "r", "s"], "8"  => ["t", "u", "v"], "9"  => ["w", "x", "y", "z"], "0" => [" "]}

	numerical_array = numbers.split(//) #This will split the string into an array of strings, which in this case would be each number
	combo_array = []

	numerical_array.each do |fn|
		number_values = h[fn] #values of the keys
		combo_array.push(number_values) #could also have used h.to_a
	end

	final_array = []

	final_array = combo_array[0].product(*combo_array[1..(combo_array.length-1)]) # * takes away the outer bracket and just leaves the elements and doesn't make the product an array. It leaves the ARGUMENTS!!!

	final_array.collect! {|x| x.join } # the ! does final_array = final_array.collect
	#needed to use collect! to not just return the combination of elements but to actually combine them into a single string instead of an array of characters
	
	final_array.reject! {|item| !word_check(item) } #reject the words which are not the specific word the user is looking for and puts them in the final_array
	return final_array
end

def word_check(word)
	File.open("/usr/share/dict/words", "r").each_line do |line| #need to use each_line since each word in the file is on it's own line. Otherwise 
																#the code will find words in the file that includes the word we are looking for. Not just the word
	new_line = line.rstrip #rstrip takes away the space after the line
		if (new_line <=> word) == 0 #this is a comparison which returns a value -1,0,1
			return true	
		end
	end
	return false
end

numerical_word = "968"
print possible_words(numerical_word)
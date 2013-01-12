# File.open("/usr/share/dict/words", "r")

h = {"1" => [" "], "2"  => ["a", "b", "c"], "3"  => ["d", "e", "f"], "4"  => ["g", "h", "i"], "5"  => ["j", "k", "l"], "6"  => ["m", "n", "o"], "7"  => ["p", "q", "r", "s"], "8"  => ["t", "u", "v"], "9"  => ["w", "x", "y", "z"], "0" => [" "]}

numerical_word = "46"
numerical_array = numerical_word.split(//) #This will split the string into an array of strings, which in this case would be each number
combo_array = []

numerical_array.each do |fn|
	number_values = h[fn] #values of the keys
	combo_array.push(number_values)
end
print combo_array




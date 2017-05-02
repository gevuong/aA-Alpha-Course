# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
str.delete(("a".."z").to_a.join)
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  mid_char = str.chars[str.length / 2]
  return mid_char if str.length.odd?
  return str.chars[str.length / 2 - 1] + mid_char if str.length.even?
end

# Return the number of vowels in a string.
def num_vowels(str)
  str.chars.count { |ch| "aeiou".include?(ch.downcase) }
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  (1..num).to_a.reduce(:*)
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  str = ""
  arr.each { |el| str << el + separator }
  str.chars.take(str.length - 1).join.to_a
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  new_str = ""
  str.each_char.with_index do |ch, idx|
    new_str << ch.downcase if idx.even?
    new_str << ch.upcase if idx.odd?
  end

  new_str
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  new_str = ""
  str.split.each do |word|
    new_str << word.reverse + " " if word.length >= 5
    new_str << word + " "
  end

  new_str
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  arr = (1..n).to_a
  arr.each_with_index do |int, el|
    if int % 3 && int % 5 == 0
      arr[el] = "fizzbuzz"
    elsif int % 3 == 0
      arr[el] = "fizz"
    elsif int % 5 == 0
      arr[el] = "buzz"
    end
  end

  arr
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)

end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)

end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)

end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)

end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)

end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)

end

# Narcissistic Number

# sudo code
# 0. check if input to make sure it's a string of numbers
# 1. split the string input into an array_of_numbers
# 2. loop through each element of the array, and exponetiate each number to the power of the length of the str
# 3. sum each number cumulatively.
# 4. compare the ending sum with the str value converted to integer


def nar_num(str)
  # if /^(?<num>\d+)$/ =~ str
    array_of_numbers = str.split('')
    str_length = str.length
    sum = 0
    array_of_numbers.each do |num|
      sum += num.to_i ** str_length
    end
    return sum == str.to_i
  # else
  #   puts "not a string of numbers"
  # end
end

# unless str =~ /\A\d+\z/

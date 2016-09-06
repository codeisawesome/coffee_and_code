#Coffee and code

x = [1, 12, 144, 1728, 20736, 248832, 2985984, 35831808]

puts x.inject(:*)

# 1. Iterate through the array
# 2. Starting at postion 1
# 3. Multiply the second element by the previous element
# 4. Increment our position
# 5. Repeat step 3
# 6. At the end of the array, return the result

#For the interviewer, they want to

# inject uses the first argument passed as the first arguement. Can pass in a block.
# reduce is an alisa for inject, appropriate.
# iteration method, going through one item at a time
# As it passes through an array, it's goal is to reduce that array into one result


#Here's an example
def multiply_num(arr) # The round brakets gives the starting value
  arr.inject(1) do |quot, num| #quot survive, num gets multiplied on
    quot * num
  end
end



result = 1

array.each do |y|
  result *= num
end

puts result

# 1.We want the product of the next element with the product of the previous elements.
# 2.We want the first element to multiply the second element, return the total
# 3.We want to take the above total and multiple the 3rd element to it, and return a total
# 4.We keep going until we run through the all of the elements and return the end total.

# numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
# suits = ['spades', 'hearts', 'diamonds', 'clubs']
#
#
# Use numbers and suits to construct the following array (represents the 52 cards in a deck): [["2", "spades"], ["3", "spades"] ... ["K", "clubs"], ["A", "clubs"]]
#
# sudo code
# 1 - take the first element in suits
# 2 - match it with the first element in numbers and put them into a list,
# 3 - push the list into the main list
# 4 - repeat step 1 with the next element in the number list, then step 3
# 5 - repeat step 4 until the first element has matched with all the elements in numbers
# 6 - start with the next element in suits for all of the above steps until 'A'

# don't talk about language specific. fairly high level.

# numbers.each do |num|
#   suits.each do |suit|
#     deck << [num, suit]
#   end
# end

numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']

deck = []

suits.each do |suit|
  numbers.each do |num|
    deck << [num, suit]
  end
end

deck

# what does the map do?

# 1. write a open bracket, then the first 3 digits
# 2. write a close bracket and space
# 3. write the next 3 digits and a dash
# 4. write the last 4 digits



def create_phone_number(phone_num)
  "(" + phone_num[0..2].join + ") " + phone_num[3..5].join + "-" + phone_num[6..9].join
end

# alternative solution

def create_phone_number(digits)
  "(#{digits[0,3].join}) #{digits[3,3].join} - #{digits[6,4].join}"
end


create_phone_number([1,2,3,4,5,6,7,8,9,0])

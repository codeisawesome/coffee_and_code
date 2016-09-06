# 1. check the string length
# 2. if it is even, split them into 0..length/2 and length/2..length
# 3. if it is odd, split them into 0..(length-1)/2 and (length-1)/2..length
# 4. add them together and check if both side are equal.
# 5. if equal, return "it's a lucky ticket!"


#####

# 1. create a method
# 2. input is a string
# 3. output is a boolean
# 4. output False if input is ''
# 5. output False if input is not all nums

def luck_check(str) # input is a string
  # validate your input
  # output flase if input is ''
  if str == ''
    return false
  end

  # output false if input is no all nums
  unless str =~ /\A\d+\z/
    return false
  end

  # figure out the input's length
  length = str.length

  # figure out midpoint = length / 2  ---->
    # chars to tkae from each side
  midpoint = length/2

  #convert string to array of integers
  chars = str.chars.map { |c| c.to_i }

  #sum the left side
  left_sum = chars[0..midpoint-1].inject(:+) # ruby knows to use inject and add averything together

  puts "***** left sum = #{left_sum}"
  #sum the rigth side
  right_sum = chars[-midpoint+1..-1].inject(:+)

  puts "***** right sum = #{right_sum}"

end

puts luck_check('')
puts luck_check('11a11')
puts luck_check('003111')
puts luck_check('813372')
puts luck_check()
  # if left_sum == right_sum
  #   return true
  # else
  #   return false
  # end

  # compare
  return (left_sum == right_sum) # will return true or false


# def luck_check(str)
#   case str
#   when ''
#     "you have an empty ticket!"
#   end
#   array = str.split('')
#   array_length = array.length
#   case array.length % 2
#   when 0
#      first_half = array[0..array_length/2 - 1]
#      second_half = array[array_length/2..array_length]
#      if first_half == second_half
#        return "you have a lucky ticket!"
#      else
#        return "sorry, pleaes try again."
#      end
#   when 1
#     first_half = array[0..array_length/2]
#     second_half = array[array_length/2..array_length]
#     if first_half == second_half
#       return "you have a lucky ticket!"
#     else
#       return "sorry, pleaes try again."
#     end
#   end
# end
#
#
#     && array[0..array_lengh/2] == array[]
#     if [0..len/2].to_i

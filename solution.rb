###############################################################################
# PART 1                                                                      #
###############################################################################
# For this we'll write out by hand all the possible paths the very hungry
# caterpillar can take and find the best.
#
# Possible paths:
#   3 -> 7 -> 2 -> 8 = 20
#   3 -> 7 -> 2 -> 5 = 17
#   3 -> 7 -> 4 -> 5 = 19
#   3 -> 7 -> 4 -> 9 = 23 <--- This path will get
#   3 -> 4 -> 4 -> 5 = 16      the very hungry
#   3 -> 4 -> 4 -> 9 = 20      caterpillar the
#   3 -> 4 -> 6 -> 9 = 22      most food!!!
#   3 -> 4 -> 6 -> 3 = 16
puts "He ate 23 leaves on the first set of branches!"

###############################################################################
# PART 2                                                                      #
###############################################################################
# Here we use a brute force approach. We start at the top and nibble our way
# down. Once we find all possible solutions, we report the one which will make
# our friend, the very hungry caterpillar, the fullest.
require 'json'
@branches = JSON.parse(File.read('branches2.json'))
@paths    = []

def eat(row, col, eaten)
  if row+1 == @branches.length
    @paths << eaten
  else
    eat(row+1, col, eaten+@branches[row+1][col])
    eat(row+1, col+1, eaten+@branches[row+1][col+1])
  end
end

eat(0, 0, @branches[0][0])

puts "He ate #{@paths.max} leaves on the second set of branches!"

###############################################################################
# PART 3                                                                      #
###############################################################################
# This set of branches is so large that the very hungry caterpillar will have
# starved or turned into a butterfly before our code from part 2 found the
# solution. So instead we'll take a novel approach and start from the bottom
# and go up, discarding the path's that don't make our friend the fattest!
require 'json'
@branches = JSON.parse(File.read('branches3.json'))

(@branches.length-2).downto(0) do |row|
  @branches[row].each_with_index do |val, i|
    @branches[row][i] += [@branches[row+1][i], @branches[row+1][i+1]].max
  end
end

puts "He ate #{@branches[0][0]} leaves on the third set of branches!"

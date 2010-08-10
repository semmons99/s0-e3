###############################################################################
# PART 1                                                                      #
###############################################################################
# Possible paths:
#   3 -> 7 -> 2 -> 8 = 20
#   3 -> 7 -> 2 -> 5 = 17
#   3 -> 7 -> 4 -> 5 = 19
#   3 -> 7 -> 4 -> 9 = 23 <--- This path will get
#   3 -> 4 -> 4 -> 5 = 16      the very hungry
#   3 -> 4 -> 4 -> 9 = 20      caterpillar the
#   3 -> 4 -> 6 -> 9 = 22      most food!!!
#   3 -> 4 -> 6 -> 3 = 16

###############################################################################
# PART 3                                                                      #
###############################################################################
# This set of branches is so large that the very hungry caterpillar will have
# starved or turned into a butterfly before our code from part 2 found the
# solution. So instead we'll take a novel approach and start from the bottom
# and go up, discarding the path's that don't make our friend the fattest!
branches = eval(File.read('branches3.json'))

(branches.length-2).downto(0) do |row|
  branches[row].each_with_index do |val, i|
    branches[row][i] += [branches[row+1][i], branches[row+1][i+1]].max
  end
end

puts "The very very hungry caterpillar will eat #{branches[0][0]} leaves!"

#
# Complete the 'rotateLeft' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER d
#  2. INTEGER_ARRAY arr
#

def rotateLeft(d, arr)
  # Write your code here
  times_rotate = d
  new_arr = []

  times_rotate.times do
    new_arr = arr.map(&:clone)
    
    arr.each_with_index do |element, index|
      new_arr[index - 1] = element 
    end
    
    arr = new_arr.map(&:clone)
  end

  new_arr
end
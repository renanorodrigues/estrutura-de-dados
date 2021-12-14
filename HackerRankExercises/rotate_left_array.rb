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
  new_arr = arr.map(&:clone)

  times_rotate.times do
    last_elem = new_arr.shift
    new_arr.unshift last_elem
  end

  new_arr
end
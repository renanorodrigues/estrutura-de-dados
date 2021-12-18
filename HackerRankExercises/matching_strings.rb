# Complete the 'matchingStrings' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. STRING_ARRAY strings
#  2. STRING_ARRAY queries
#

strings = %w(abc dca dd ab 7 ca abc agg ca abc ca ca 6)
queries = %w(abc ca 6)

def matchingStrings(strings, queries)
  # Write your code here
  tot = []

  queries.each do |querie|
    tot.push( strings.count { |str| str.match?(/^#{Regexp.quote(querie)}$/i) } )
  end

  tot
end

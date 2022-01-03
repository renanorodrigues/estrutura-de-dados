def dynamicArray(n, queries)
  # Write your code here
  arr = [[]]
  last_answer = 0
  answers = []
    
  queries.each do |query|
    index = ((query[1] ^ last_answer) % n)
    query_last_elem = query[-1]
    
    if query[0] == 2
      last_answer = arr[index][query_last_elem % arr[index].size]
      answers.push last_answer
    else
      arr[i].push query_last_elem
    end
  end

  answers
end
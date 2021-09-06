# Complexidade O(N) no pior caso
# Isso se dá pelo motivo do elemento não estar na lista, logo, vai iterar cada elemento até o último

def search(array, element)
  
  array.each_with_index do |value, index| 
    return index if value == element
  end

  raise "Element not found"
end

numbers = [34, 11, 53, 22, 245, 2, 1, 0]
result = search(numbers, 11)

puts result
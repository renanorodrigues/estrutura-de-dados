def printLinkedList head
  if head
    pointer = head

    while pointer do
      puts pointer.data
      pointer.next
    end
  end
end

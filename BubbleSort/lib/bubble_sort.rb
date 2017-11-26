def bubble_sort(array)
  if array.empty?
    return raise 'Tablica jest pusta'
  else
    array_ = Array.new

    for j in 0...array.length
      for i in 1...array.length
        if array[i] < array[i-1]
          temp = array[i]
          array[i] = array[i-1]
          array[i-1] = temp
          i = i + 1
        else
          i = i + 1
        end
      end
      array_ << array.last
      array.delete_at(array.length-1)
      j = j + 1
    end
  end
  return array_.reverse
end

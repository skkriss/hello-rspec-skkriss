# Bubble sort class
def bubble_sort(array)
  done = false
  until done
    done = true
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        done = false
      end
    end
  end
  array
end